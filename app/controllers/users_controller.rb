  class UsersController < ApplicationController
  before_action :admin?, exclude: :show
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    per_page = 15

    if !params[:users].nil?
      from = params[:users][:from]
      to   = params[:users][:to]

      query_array = []

      # создается массив для SQL запроса,
      # на основе параметров подставляется AND и BETWEEN
      from.each do |f|
        if f[1].present?
          # ниже делается строка запроса для выборки по диапозону или с простым условием
          # to[f[0]].empty? ? query_array.push("#{f[0]} = #{f[1]}") : to[f[0]] >= f[1] ? query_array.push("#{f[0]} BETWEEN #{f[1]} and #{to[f[0]]}") : "no"

          if to[f[0]].empty?
            query_array.push("#{f[0]} = #{f[1]}")
          else
            if to[f[0]] >= f[1]
              query_array.push("#{f[0]} BETWEEN #{f[1]} and #{to[f[0]]}")
            else
              "no"
            end
          end

        end
      end

      sql_query = query_array.join(" AND ")

      @users = User.where(sql_query).order("age desc").paginate(page: params[:page], :per_page => per_page)
    else
      @users = User.paginate(page: params[:page], :per_page => per_page)
    end
  end

  def find
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  #   def following?(other_page)
  #     relationships.find_by(followed_id: other_page.id)
  #   end
  #
  #   def follow!(other_page)
  #     relationships.create!(followed_id: other_page.id)
  #   end
  #
  #   def unfollow!(other_page)
  #     relationships.find_by(followed_id: other_page.id).destroy!
  #   end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:age, :pay, :stature, :weigh)
  end

  def admin?

  end
  end
