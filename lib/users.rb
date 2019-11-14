class User < ActiveRecord::Base
    has_many :user_jobs
    has_many :jobs, through: :user_jobs

    def increment_user(job)
        self.increment_happiness(job)
        self.increment_money(job)
        self.increment_age
    end

    def increment_happiness(job)
        self.happiness += job.happiness_increment
        self.save
    end

    def increment_money(job)
        self.money += job.money
        self.save
    end

    #create method that will increment the age by 10 after each turn
    def increment_age
        self.age += 10
        self.save
    end

    def assign_job(job_selection)
        UserJob.create(user_id: self.id, job_id: job_selection.id, current_job?: true)
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