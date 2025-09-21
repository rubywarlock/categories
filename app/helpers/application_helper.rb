module ApplicationHelper
  def current_user_have_access?(current_user, access_target)
    return true if current_user&.admin?

    if current_user
      current_user&.id == access_target&.user_id
    else
      false
    end
  end
end
