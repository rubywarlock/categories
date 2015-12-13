class AddLevelToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :level, :integer
  end
end
