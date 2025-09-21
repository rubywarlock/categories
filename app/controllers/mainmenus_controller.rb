class MainmenusController < ApplicationController
  include ApplicationHelper
  before_action :set_mainmenu, only: [:show, :edit, :update, :destroy]

  def index
    @mainmenus = Mainmenu.all
  end

  def show
  end

  def edit
  end

  def update
    if @mainmenu.update_attributes(params.require(:mainmenu).permit(:title, :text))
      redirect_to @mainmenu, notice: 'Mainmenu was successfully updated.'
    else
      render action: "edit"
    end
  end

  def new
    @mainmenu = Mainmenu.new(parent_id: params[:parent_id])
  end

  def create
    @mainmenu = Mainmenu.new(mainmenu_params)

    if @mainmenu.parent_id.blank?
      @mainmenu.style_class = "nested_mainmenus site-dropdown-menu"
    else
      @mainmenu.style_class = "mmain"
    end

    if @mainmenu.save
      flash[:success] = 'Your children mainmenu was successfully added!'

      redirect_to @mainmenu
    else
      render 'new'
    end
  end

  def add

  end

  def destroy
    if @mainmenu.destroy
      flash[:success] = 'Mainmenu deleted'
      redirect_to root_path
    else
      flash[:success] = 'Delete error'
      render 'new'
    end
  end

private

  def mainmenu_params
    params.require(:mainmenu).permit(:parent_id, :title, :text)
  end

  def set_mainmenu
    @mainmenu = Mainmenu.find(params[:id])
  end
end


#def deriveding?(other_page)
#	relationships.find_by(derived_id: other_page.id)
#end

#def adopt!(g_id, other_page)
#	rel = Relationship.new
#	rel.create!(parent_id: g_id, derived_id: other_page.id)
#end

#def unadopt!(other_page)
#	relationships.find_by(derived_id: other_page.id).destroy!
#end
