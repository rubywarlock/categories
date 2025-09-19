class CreateChildmenus < ActiveRecord::Migration[4.2]
  def change
    create_table :childmenus do |t|
      t.integer :mainmenu_id
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
