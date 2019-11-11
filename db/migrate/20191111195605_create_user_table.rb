class CreateUserTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age, :default => 18
      t.string :gender
      t.integer :happiness, :default => 5
      t.integer :money, :default => 20000
    end
  end
end
