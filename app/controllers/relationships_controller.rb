class RelationshipsController < ApplicationController
  before_action :signed_in_user
=begin
  def create
	  @page = Page.find(params[:gen_info])
	  @page.adopt!(@user)
	  respond_to do |format|
		  format.html { redirect_to @user }
		  format.js
	  end
  end

  def destroy
	  @user = Relationship.find(params[:id]).followed
	  current_user.unfollow!(@user)
	  respond_to do |format|
		  format.html { redirect_to @user }
		  format.js
	  end
  end
=end
end
