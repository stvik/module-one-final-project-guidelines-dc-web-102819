class CreateCurrentColumnInUserJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :user_jobs, :current_job?, :boolean
  end
end
