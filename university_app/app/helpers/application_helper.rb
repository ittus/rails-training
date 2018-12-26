module ApplicationHelper
  def session_link
    if (logged_in?)
      link_to("Log out", logout_path, method: :delete)
    else
      link_to("Login", login_path)
    end
  end
end
