class AddUserRefToMainmenu < ActiveRecord::Migration[5.2]
  def change
    add_reference :mainmenus, :user, foreign_key: true
  end
end
