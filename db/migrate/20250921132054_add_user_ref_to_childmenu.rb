class AddUserRefToChildmenu < ActiveRecord::Migration[5.2]
  def change
    add_reference :childmenus, :user, foreign_key: true
  end
end
