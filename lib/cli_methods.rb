#Add more creative content

def welcome
    puts "Welcome to your new life!"
end

#ask_name is using a gem called tty to prompt the user for the name its requiring an inout and its capitalizing it
def ask_name
    prompt = TTY::Prompt.new
    prompt.ask("Choose your name:") do |q|
        q.required true
        q.modify :capitalize
    end
end

#get_gender is also using tty gem and its requiring the user to select from one of the given options
def get_gender
    prompt = TTY::Prompt.new
    prompt.select("Enter your gender:", %w(Male Female Other))
end

#get_job is doing the same as get_gender but its getting the job options from the name column jobs table
def get_job
    prompt = TTY::Prompt.new
    jobs = Job.all.map {|job| job.name}
    input = prompt.select("Choose your job:", jobs)
    chosen_job = Job.find_by(name: input)
    return chosen_job
end


def assign_job(job_selection, new_user)
    UserJob.create(user_id: new_user.id, job_id: job_selection.id)
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
    welcome
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

#create run blocks each block representing a turn 
def run_program
    player = create_user
    job = get_job
    assign_job(job, player)
    increment_user(player,job)
    choice_output(player, job)
    end_game(job, player)
end







