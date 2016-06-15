class SearchesController < ApplicationController
  def index
  end

  def show
  end

  def find
	  search = params[:p]
	  #search.gsub!(/[\\]+|[\/]+|LIKE|\*|SELECT|WHERE|ALERT|DROP|TABLE/i,"")
	  @users = User.where("age LIKE \"%#{search}%\" OR pay LIKE \"%#{search}%\" OR stature LIKE \"%#{search}%\" OR weigh LIKE \"%#{search}%\" OR email LIKE \"%#{search}%\"").limit(10)

    respond_to do |format|
      format.html
      format.js
      format.json { render action: 'find', status: :created, location: @user }
    end
  end
end
