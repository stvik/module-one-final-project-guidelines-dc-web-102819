class CreateJobsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :happiness_increment
      t.integer :level
      t.integer :salary
    end
  end
end
