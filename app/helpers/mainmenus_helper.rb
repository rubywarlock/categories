module MainmenusHelper
	def nested_mainmenus(mm)
=begin
		mainmenus.map do |mainmenu, sub_mainmenus|
			mClass = "nested_mainmenus site-dropdown-menu"
			mId = "site-dropdown-menu-#{mainmenu.id}"
			mStyle = ""#"display: block;"
			render(mainmenu) + content_tag(:div, nested_mainmenus(sub_mainmenus), :class => "#{mClass}", :id => "#{mId}", :style => "#{mStyle}")
		end.join.html_safe
=end

    render "mainmenus/mainmenu", :mainmenus => mm
	end
end
