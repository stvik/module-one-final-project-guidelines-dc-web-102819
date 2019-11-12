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
end