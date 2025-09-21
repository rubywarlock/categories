class SearchesController < ApplicationController
  def index
  end

  def show
  end

  def find
	  @search = params[:p]
	  # search.gsub!(/[\\]+|[\/]+|LIKE|\*|SELECT|WHERE|ALERT|DROP|TABLE/i,"")
	  # @users = User.where(
		#  "age LIKE ? OR pay LIKE ? OR stature LIKE ? OR weigh LIKE ? OR email LIKE ?",
		#  "%#{search.to_i}%", "%#{search.to_i}%", "%#{search.to_i}%",
		#  "%#{search.to_i}%", "%#{search}%").limit(10)
	  @users = User.where("email LIKE ?", "%#{@search}%").limit(10)

    respond_to do |format|
      format.html
      format.js
      format.json
    end
  end
end