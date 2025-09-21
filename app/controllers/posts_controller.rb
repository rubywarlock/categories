class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
	  @post = Post.new(:childmenu_id => params[:id])
  end

	def create
		@post = Post.new(params.require(:post).permit(:childmenu_id, :title, :text))
		@post.text = @post.rubycode
		#@create_post.text = @create_post.replacer
		if @post.save
			redirect_to @post, notice: 'Post was successfully created.'
		else
			flash[:error] = "Error create"
			render "new"
		end
	end

  def edit
  end

	def update
		if @post.update(params.require(:post).permit(:title, :text))
			redirect_to @post, notice: 'Post was successfully updated.'
		else
			render action: "edit"
		end
	end

  def destroy
	  childmenu_id = @post.childmenu
	  if @post.destroy
		  redirect_to new_post_path(:id => childmenu_id), notice: 'Post was successfully deleted.'
	  else
		  flash[:success] = 'Delete Post error'
		  render 'new'
	  end
  end

	private
	def set_post
		@post = Post.find(params[:id])
	end

end