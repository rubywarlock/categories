class Childmenu < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  belongs_to :mainmenu
  belongs_to :user
end
