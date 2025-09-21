class HomePagesController < ApplicationController
  def index
    @mainmenus = Mainmenu.all
  end

  def admin
  end


end