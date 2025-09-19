class SetDefaultValueIntoLevelInPages < ActiveRecord::Migration[4.2]
  def change
	  change_column :pages, :level, :integer, default: 0
  end
end
