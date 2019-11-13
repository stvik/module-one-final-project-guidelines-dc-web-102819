class CreateOutcomeJobIdColumnForTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :outcome_job_id, :integer
  end
end
