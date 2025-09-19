class AddStyleClassToMainmenus < ActiveRecord::Migration[4.2]
  def change
    add_column :mainmenus, :style_class, :string
  end
end
