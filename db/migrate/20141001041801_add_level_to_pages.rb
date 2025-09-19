class AddLevelToPages < ActiveRecord::Migration[4.2]
  def change
    add_column :pages, :level, :integer
  end
end
