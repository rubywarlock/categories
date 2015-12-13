class RenameRelationshipsColumns < ActiveRecord::Migration
  def change
	  rename_column :relationships, :followed_id, :derived_id
	  rename_column :relationships, :follower_id, :parent_id
  end
end