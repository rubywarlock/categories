class ChildmenusController < ApplicationController
  before_action :set_childmenu, only: [:show, :edit, :update, :destroy]
  before_action :access, only: [:create, :update, :destroy]

  def show
  end

  def new
    @category = Childmenu.new(mainmenu_id: params[:id])
  end

  def create
    @category = Childmenu.new(childmenu_params)

    if @category.save
      redirect_to @category, notice: 'Childmenu was successfully updated.'
    else
      flash[:error] = 'Delete Childmenu error'
      render action: "new"
    end
  end

  def edit
  end

  def update
    if @category.update_attributes(childmenu_params)
      redirect_to @category, notice: 'Childmenu was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    if @category.destroy
      redirect_to root_path
    else
      flash[:success] = 'Delete Childmenu error'
      render 'new'
    end
  end

  private

  def childmenu_params
    params.require(:childmenu).permit(:mainmenu_id, :title, :text)
  end

  def set_childmenu
    @category = Childmenu.find(params[:id])
  end
end
