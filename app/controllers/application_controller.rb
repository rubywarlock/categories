class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :replacer

  private

  def access
    return true if current_user&.admin?

    if @category
      return true if current_user&.id == @category&.user_id
    end

    redirect_to new_user_session_path, error: 'Need authenticate'
  end
end