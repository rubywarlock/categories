class HomePagesController < ApplicationController
  def index
	  #@pages = Page.all
    @mainmenus = Mainmenu.all#(:level).select(:level)
  end

  def admin
  end


end