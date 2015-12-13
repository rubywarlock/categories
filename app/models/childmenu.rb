class Childmenu < ActiveRecord::Base
	has_many :contents, dependent: :destroy
	belongs_to :mainmenu
end
