class UserJob < ActiveRecord::Base
    belongs_to :user
    belongs_to :job

    def change_current_to_false
        self.update(current_job?: false)
        self.save
    end
end


