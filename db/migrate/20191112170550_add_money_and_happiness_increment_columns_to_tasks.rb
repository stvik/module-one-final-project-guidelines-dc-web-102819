class AddMoneyAndHappinessIncrementColumnsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :money, :integer
    add_column :tasks, :happiness_increment, :integer
  end
end
