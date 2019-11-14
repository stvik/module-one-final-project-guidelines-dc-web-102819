#Add more creative content
PROMPT = TTY::Prompt.new

#ask_name is using a gem called tty to prompt the user for the name its requiring an inout and its capitalizing it
def ask_name
    PROMPT.ask("Choose your name: ") do |q|
        q.required true
        q.modify :capitalize
    end
end

#get_gender is also using tty gem and its requiring the user to select from one of the given options
def get_gender 
    PROMPT.select("Enter your gender:", %w(Male Female Other))
end

#get_job is doing the same as get_gender but its getting the job options from the name column jobs table
def get_job
    jobs = Job.all.map {|job| job.name}
    input = PROMPT.select("Choose your job:", jobs)
    chosen_job = Job.find_by(name: input)
    return chosen_job
end

def create_user
    name = ask_name
    gender = get_gender
    starting_job = Job.find_by(name:"Unemployed")
    new_user = User.create(name: name, gender: gender)
    new_user.assign_job(starting_job)
    return new_user
end

def output_tasks(user)
    # user#current_job is used to find the current job. Task descriptions are then grabbed from that job and used
    #to prompt the user to make a decision
    
    task_descriptions = user.current_job.tasks.collect {|task| task.description}
    input = PROMPT.select("Make a decision:", task_descriptions)
    task = user.current_job.tasks.find_by(description: input)
end


def path(user)
    chosen_task = output_tasks(user)
    new_job_id = chosen_task.outcome_job_id
    new_job = Job.all.find(new_job_id)
    UserJob.find_by(job_id:user.current_job.id, current_job?: true).change_current_to_false
    user.assign_job(new_job)
    user.increment_user(new_job)
    user.display_result
    user.display_stats
end


#create run blocks each block representing a turn 
def run_program
    Graphic.welcome
    player = create_user
    while player.age<75 && player.happiness > 0 && player.money > 0 do
        path(player)
    end

    if player.happiness <0 || player.money < 0
        Graphic.you_lose
        player.display_result
        player.display_stats
    else
        Graphic.congrats
        player.display_stats
    end
    #binding.pry
end






