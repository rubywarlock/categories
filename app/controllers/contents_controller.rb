class ContentsController < ApplicationController
	before_action :set_content, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
	  @content = Content.new(:childmenu_id => params[:childmenu_id])
  end

	def create
		@content = Content.new(params.require(:content).permit(:childmenu_id, :title, :text))
		@content.text = @content.rubycode
		#@create_content.text = @create_content.replacer
		if @content.save
			redirect_to @content, notice: 'Content was successfully created.'
		else
			flash[:error] = "Error create"
			render "new"
		end
	end

  def edit
  end

	def update
		if @content.update(params.require(:content).permit(:title, :text))
			redirect_to @content, notice: 'Content was successfully updated.'
		else
			render action: "edit"
		end
	end

  def destroy
	  childmenu_id = @content.childmenu
	  if @content.destroy
		  redirect_to new_content_path(:childmenu_id => childmenu_id), notice: 'Content was successfully deleted.'
	  else
		  flash[:success] = 'Delete Content error'
		  render 'new'
	  end
  end

	private
	def set_content
		@content = Content.find(params[:id])
	end

end