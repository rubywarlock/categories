class Content < ActiveRecord::Base
	#validates :title, presence: true, length: { maximum: 255 }
	#validates :text, presence: true, length: { maximum: 1000 }
	belongs_to :childmenu
end