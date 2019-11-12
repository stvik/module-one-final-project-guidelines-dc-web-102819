class CreateCurrentColumnInUserJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :user_jobs, :current?, :boolean, :default => false
  end
end
