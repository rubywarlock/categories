class Post < ActiveRecord::Base
	#validates :title, presence: true, length: { maximum: 255 }
	#validates :text, presence: true, length: { maximum: 1000 }
	include ActionView::Helpers::TextHelper

	has_many :comments, dependent: :destroy

	validates :title, length: { maximum: 255 }
	validates :text, length: { maximum: 3000 }

	belongs_to :childmenu
	belongs_to :user

	def rubycode
		raw_text = self.text
		begin
			code = raw_text.scan(/\[code\]([.|\w|\W]+)\[\/code\]/)[0].first

			# CKEDITOR
			# CodeRay захватывает часть символов тегов от CkEditor
			# и поэтому форматирование сбивается так как часть cимволов экранируется CodeRay
			code = CodeRay.scan(code, :ruby).div
			raw_text = simple_format(raw_text).gsub(/\[code\][.|\w|\W]+\[\/code\]/,code)
			# raw_text = simple_format(raw_text).gsub(/\[code\][.|\w|\W]+\[\/code\]/,code)
		rescue => error
			raw_text
		end
	end
end