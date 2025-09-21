class Childmenu < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	belongs_to :mainmenu
end
