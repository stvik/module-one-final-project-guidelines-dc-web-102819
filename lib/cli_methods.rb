#Add more creative content
PROMPT = TTY::Prompt.new


def welcome
    puts "Welcome to your new life!"
end

#ask_name is using a gem called tty to prompt the user for the name its requiring an inout and its capitalizing it
def ask_name
    PROMPT.ask("Choose your name:") do |q|
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


def assign_job(job_selection, new_user)
    UserJob.create(user_id: new_user.id, job_id: job_selection.id, current_job?: true)
end

def choice_output(user, job)
    puts "You are a #{job.name} making $#{job.money}. "
    puts "Your happiness is currently #{user.happiness}."
    puts "Your current balance is $#{user.money}"
    puts "You are now #{user.age}."
    puts "Beware, after each decision your age will be 10 years older."
end

def end_game(job, user)
    puts "Congratulation's #{user.name}. "
    puts "Here are your final stats:"
    puts "Money: #{user.money}"
    puts "Happiness: #{user.happiness}"
    puts "Job: #{job.name}"
end

def create_user
    name = ask_name
    gender = get_gender
    new_user = User.create(name: name, gender: gender)
    return new_user
end

def increment_user(user,job)
    user.increment_happiness(job)
    user.increment_money(job)
    user.increment_age
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
    assign_job(new_job,user)
    increment_user(user,new_job)
    user.current_job
end


#create run blocks each block representing a turn 
def run_program
    welcome
    player = create_user
    job = get_job
    assign_job(job, player)
    increment_user(player,job)
    choice_output(player, job)
    # output_tasks(player)
    while player.age<75 && player.happiness > 0 && player.money > 0 do
        path(player)
    end
    binding.pry
end




# while age < 75 && money > 0 && happiness > 0
#    let user choose from the task descriptions for that "level" and job_id
#    each choice will have different outcome. 
# end







