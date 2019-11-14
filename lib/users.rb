class User < ActiveRecord::Base
    has_many :user_jobs
    has_many :jobs, through: :user_jobs

    def increment_happiness(job_or_task)
        self.happiness += job_or_task.happiness_increment
        self.save
    end

    def increment_money(job_or_task)
        self.money += job_or_task.money
        self.save
    end

    #create method that will increment the age by 10 after each turn
    def increment_age
        self.age += 10
        self.save
    end
    #finds the users current job
    def current_job
        current_jobid = UserJob.all.find {|userjob| userjob.current_job? == true}.job_id
        current_job = Job.all.find {|job| job.id == current_jobid}
    end

    def display_result
        puts "
     
        "
        puts "#{self.current_job.description}
        "
    end
    def display_stats


        puts "Name: #{self.name}"
        puts "Age: #{self.age}"
        puts "Happiness: #{self.happiness}"
        puts "Money: #{self.money}"
        puts "Current Job: #{self.current_job.name}
        "
    end
        
end