class User < ActiveRecord::Base
    has_many :user_jobs
    has_many :jobs, through: :user_jobs

    #increments/decrements user attributes based on job
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

    def increment_age
        self.age += 10
        self.save
    end

    #assigns job to user
    def assign_job(job_selection)
        UserJob.create(user_id: self.id, job_id: job_selection.id, current_job?: true)
    end

    #finds the users current job
    def current_job
        current_jobid = UserJob.all.find {|userjob| userjob.current_job? == true}.job_id
        current_job = Job.all.find {|job| job.id == current_jobid}
    end

    #displays the result of the users choice
    def display_result
        puts "
     
        "
        puts "#{self.current_job.description}
        "
    end

    #display user stats
    def stats
        ["Name: #{self.name}",
        "Age: #{self.age}",
        "Happiness: #{self.happiness}",
        "Money: #{self.money}",
        "Current Job: #{self.current_job.name}"]
    end

    def display_stats
        puts stats
    end

    #print all jobs user has had
    def display_jobs
        all_jobs = self.jobs.collect {|job| job.name}.uniq
        puts "These are all the jobs you've had:"
        puts all_jobs[1..all_jobs.length]
    end

    def self.display_all_stats
        self.all.each do |user|
            puts user.stats[0..3]
            puts"
            "
        end
    
    end
        
end