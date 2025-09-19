class AddLevelToRelationships < ActiveRecord::Migration[4.2]
  def change
    add_column :relationships, :level, :integer
  end
end
