class MainmenusController < ApplicationController
	include ApplicationHelper
	before_action :get_mainmenus

  def index
		@mainmenus = Mainmenu.all
  end

  def show
	  @show_mainmenu = Mainmenu.find(params[:id])
  end

  def edit
	  @edit_mainmenu = Mainmenu.find(params[:id])
  end

	def update
		@update = Mainmenu.find(params[:id])
		if @update.update_attributes(params.require(:mainmenu).permit(:title, :text))
			redirect_to @update, notice: 'Mainmenu was successfully updated.'
		else
			render action: "edit"
		end
	end

  def new
	  @mainmenu = Mainmenu.new(parent_id: params[:parent_id])
  end

  def create
		@create_mainmenu = Mainmenu.new(params.require(:mainmenu).permit(:parent_id, :title, :text))
		if @create_mainmenu.save
			flash[:success] = 'Your children mainmenu was successfully added! level '
			redirect_to @create_mainmenu
		else
			render 'new'
		end


  end

	def add

	end

  def destroy
	  @delete = Mainmenu.find(params[:id])
		if @delete.destroy
			flash[:success] = 'Mainmenu deleted'
			redirect_to new_mainmenu_path
		else
			flash[:success] = 'Delete error'
			render 'new'
		end
  end

	private

	def mainmenu_params
		params.require(:mainmenu).permit(:title, :text)
	end

	def get_mainmenus
		@mainmenu = Mainmenu.all
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
