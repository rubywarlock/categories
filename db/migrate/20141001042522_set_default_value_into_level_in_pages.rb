class SetDefaultValueIntoLevelInPages < ActiveRecord::Migration
  def change
	  change_column :pages, :level, :integer, default: 0
  end
end
