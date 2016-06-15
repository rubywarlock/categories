class SearchesController < ApplicationController
  def index
  end

  def show
  end

  def find
	  search = params[:p]
	  #search.gsub!(/[\\]+|[\/]+|LIKE|\*|SELECT|WHERE|ALERT|DROP|TABLE/i,"")
	  @users = User.where("Age LIKE ? OR Pay LIKE ? OR Stature LIKE ? OR Weigh LIKE ? OR Email LIKE ?",
	                      "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%").limit(10)

    respond_to do |format|
      format.html
      format.js
    end
  end
end
