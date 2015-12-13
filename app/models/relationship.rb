class Relationship < ActiveRecord::Base
	#acts_as_tree
=begin
	belongs_to :parent, class_name: "Page"
	belongs_to :derived, class_name: "Page"
	validates :derived_id, presence: true
	validates :parent_id, presence: true
=end
end
