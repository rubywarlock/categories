class Post < ActiveRecord::Base
	#validates :title, presence: true, length: { maximum: 255 }
	#validates :text, presence: true, length: { maximum: 1000 }
	include ActionView::Helpers::TextHelper

	validates :title, length: { maximum: 255 }
	validates :text, length: { maximum: 3000 }

	belongs_to :childmenu

	def rubycode
		raw_text = self.text
		begin
			code = raw_text.scan(/\[code\]([.|\w|\W]+)\[\/code\]/)[0].first

			# CKEDITOR
			# CodeRay захватывает часть символов тегов от CkEditor
			# и поэтому форматирование сбивается так как часть cимволов экранируется CodeRay
			code = CodeRay.scan(code, :ruby).div
			raw_text = simple_format(raw_text).gsub(/\[code\][.|\w|\W]+\[\/code\]/,code)
			#raw_text = simple_format(raw_text).gsub(/\[code\][.|\w|\W]+\[\/code\]/,code)
		rescue => error
			#(raw_text + "error FUCK FUCK: #{error}")
			raw_text
		end
	end

=begin
	def replacer
		str = self.text
		replacements = [['**[', '<b>'],[']**', '</b>'],['\\\\[','<i>'],[']\\\\','</i>'],]

		replacements.each do |replacement|
			str.gsub!(replacement[0], replacement[1])
		end

		str.scan(/\(\([[\w]+\/[\w]+\/[\w]+\[\[\w\W\s]+\]]*\)\)/).each do |r|
			link_without_string = r.sub(/\[[\w\s\W]+\]/,'').scan(/\(\(([\w\W]*)\)\)/)[0][0]
			string = r.scan(/\[([\w\s\W]+)\]/)[0][0]
			str.gsub!(r,"<a href=\"#{link_without_string}\">#{string}</a>")
		end
		str
	end
=end
end