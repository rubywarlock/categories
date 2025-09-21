class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :mainmenus
  has_many :childmenus
  has_many :posts
  has_many :comments
end
