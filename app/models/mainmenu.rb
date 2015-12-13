class Mainmenu < ActiveRecord::Base
=begin
	acts_as_tree order: 'created_at DESC'

	validates :title, presence: true, length: { maximum: 255 }
	validates :text, presence: true, length: { maximum: 500 }

	has_many :relationships, foreign_key: "parent_id", dependent: :destroy
	has_many :deriveds, through: :relationships, source: :derived

	has_many :reverse_relationships, foreign_key: "derived_id", class_name: "Relationship", dependent: :destroy
	has_many :parents, through: :reverse_relationships, source: :parent
=end
	has_many :childmenus, dependent: :destroy
	has_ancestry


	#def following?(other_user)
	#	relationships.find_by(followed_id: other_user.id)
	#end

	#def unfollow!(other_user)
	#	relationships.find_by(followed_id: other_user.id).destroy!
	#end
end