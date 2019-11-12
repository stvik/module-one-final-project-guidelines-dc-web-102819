
def welcome
    puts "Welcome to your new life!"
end

def ask_name
    puts "Enter your new name:"
end

def store_name
   gets.chomp
end

def ask_gender
   puts "Enter your gender:"
end

def get_gender
    gets.chomp
end

def ask_job
    puts "Pick your new job. Pick a number"
end

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


def end_game(job, user)
    puts "Congratulation's #{user.name}. "
    puts "Here are your final stats:"
    puts "Money: #{user.money}"
    puts "Happiness: #{user.happiness}"
    puts "Job: #{job.name}"
end

def run_program
    welcome
    ask_name
    name = store_name
    ask_gender
    gender = get_gender
    new_user = User.create(name: name, gender: gender)
    job = get_job
    assign_job(job, new_user)
    new_user.increment_happiness(job)
    new_user.increment_money(job)
    end_game(job, new_user)
end







