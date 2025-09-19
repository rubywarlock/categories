class CreateTableContents < ActiveRecord::Migration[4.2]
  def change
    create_table :contents do |t|
      t.integer :childmenu_id
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
