module UsersHelper
  def edit_user_button(user)
    is_admin = user&.admin?
    button_status = is_admin ? "enabled" : "disabled"
    button_class = "#{user_admin_action_button} #{button_status}"
    link_path = is_admin ? edit_user_path(user) : "#"

    link_to 'Edit', link_path, class: button_class, role: "button"
  end

  def destroy_user_button(user)
    is_admin = user&.admin?
    button_status = is_admin ? "enabled" : "disabled"
    button_class = "#{user_admin_action_button} #{button_status}"
    link_path = { method: :delete, data: { confirm: 'Are you sure?' } }

    link_to 'Destroy', user, **link_path, class: button_class, role: "button"
  end

  def user_admin_action_button
    "btn btn-primary btn-xs btn-warning"
  end
end
