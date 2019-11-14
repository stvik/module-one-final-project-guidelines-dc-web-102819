class Job < ActiveRecord::Base
    has_many :user_jobs
    has_many :tasks
    has_many :users, through: :user_jobs

    def self.starting_job
        self.find_by(name:"Unemployed")
    end
end