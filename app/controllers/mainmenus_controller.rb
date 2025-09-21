class MainmenusController < ApplicationController
  include ApplicationHelper

  before_action :set_mainmenu, only: [:show, :edit, :update, :destroy]
  before_action :access, only: [:create, :update, :destroy]

  def index
    @mainmenus = Mainmenu.all
  end

  def show
  end

  def edit
  end

  def update
    if @category.update_attributes(params.require(:mainmenu).permit(:title, :text))
      redirect_to @category, notice: 'Mainmenu was successfully updated.'
    else
      render action: "edit"
    end
  end

  def new
    @category = Mainmenu.new(parent_id: params[:parent_id])
  end

  def create
    @category = Mainmenu.new(mainmenu_params)

    if @category.parent_id.blank?
      @category.style_class = "nested_mainmenus site-dropdown-menu"
    else
      @category.style_class = "mmain"
    end

    if @category.save
      flash[:success] = 'Your children mainmenu was successfully added!'

      redirect_to @category
    else
      render 'new'
    end
  end

  def add

  end

  def destroy
    if @category.destroy
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
    @category = Mainmenu.find(params[:id])
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
