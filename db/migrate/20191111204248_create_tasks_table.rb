class CreateTasksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :job_id
      t.string :description
    end
  end
end
