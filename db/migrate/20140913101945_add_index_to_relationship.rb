class AddIndexToRelationship < ActiveRecord::Migration[4.2]
  def change
		add_index :relationships, :follower_id
		add_index :relationships, :followed_id
		add_index :relationships, [:follower_id, :followed_id], unique: true
  end
end
