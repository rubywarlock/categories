module MainmenusHelper
	def nested_mainmenus(mm)
    render "mainmenus/mainmenu", :mainmenus => mm
	end
end
