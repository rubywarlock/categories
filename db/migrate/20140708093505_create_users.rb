class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.integer :age
      t.integer :pay
      t.integer :stature
      t.integer :weigh

      t.timestamps
    end
  end
end
