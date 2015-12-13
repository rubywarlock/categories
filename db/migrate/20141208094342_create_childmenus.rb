class CreateChildmenus < ActiveRecord::Migration
  def change
    create_table :childmenus do |t|
      t.integer :mainmenu_id
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
