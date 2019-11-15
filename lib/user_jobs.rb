class UserJob < ActiveRecord::Base
    belongs_to :user
    belongs_to :job

    def change_current_to_false
        self.update(current_job?: false)
        self.save
    end

    def self.set_all_to_false
        self.all.each do |userjob|
            userjob.update(current_job?: false)
            userjob.save
        end
    end
end


