module PostsHelper
	def rubycode(code)
		#render html: code, language: :ruby
		#code.render(language: :ruby)
=begin
		begin
			Rouge.highlight(code.html_safe, :ruby || 'text', 'html').html_safe
		rescue => error
			("#{error.class} and #{error.message}")
		end
=end

	end
end