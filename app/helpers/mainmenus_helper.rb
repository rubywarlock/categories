module MainmenusHelper
	def nested_mainmenus(mainmenus)
		mainmenus.map do |mainmenu, sub_mainmenus|
			render(mainmenu) + content_tag(:div, nested_mainmenus(sub_mainmenus), :class => "nested_mainmenus site-dropdown-menu", :id => "site-dropdown-menu-#{mainmenu.id}")
		end.join.html_safe
	end
end
