class AddStyleClassToMainmenus < ActiveRecord::Migration
  def change
    add_column :mainmenus, :style_class, :string
  end
end
