class ContentsController < ApplicationController
	include ApplicationHelper

  def show
	  @show_content = Content.find(params[:id])
  end

  def new
	  @new_content = Content.new(:childmenu_id => params[:childmenu_id])
  end

  def edit
	  @edit_content = Content.find(params[:id])
  end

	def update
		@update = Content.find(params[:id])
		if @update.update_attributes(params.require(:content).permit(:title, :text))
			redirect_to @update, notice: 'Content was successfully updated.'
		else
			render action: "edit"
		end
	end

  def create
	  @create_content = Content.new(params.require(:content).permit(:childmenu_id, :title, :text))
	  #@create_content.text = replacer(@create_content.text)
	  if @create_content.save
		  redirect_to @create_content, notice: 'Content was successfully created.'
	  else
			flash[:error] = "Error create"
			render "new"
	  end
  end

  def destroy
	  @delete = Content.find(params[:id])
	  childmenu_id = @delete.childmenu
	  if @delete.destroy
		  redirect_to new_content_path(:childmenu_id => childmenu_id), notice: 'Content was successfully deleted.'
	  else
		  flash[:success] = 'Delete Content error'
		  render 'new'
	  end
  end

end
