class ChildmenusController < ApplicationController
  before_action :set_childmenu, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @childmenu = Childmenu.new(mainmenu_id: params[:id])
  end

  def create
    if @childmenu.save
      redirect_to @childmenu, notice: 'Childmenu was successfully updated.'
    else
      flash[:error] = 'Delete Childmenu error'
      render action: "new"
    end
  end

  def edit
  end

  def update

    if @childmenu.update_attributes(childmenu_params)
      redirect_to @childmenu, notice: 'Childmenu was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    if @delete.destroy
      redirect_to root_path#new_childmenus_path, notice: 'Childmenu was successfully deleted.'
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
    @childmenu = Childmenu.find(params[:id])
  end
end
