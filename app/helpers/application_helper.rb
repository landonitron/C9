module ApplicationHelper
  def login_helper style = ""
    if current_user.is_a?(GuestUser)
        (link_to "Register", new_user_registration_path, class: style) +
        " ".html_safe +
        (link_to "Login", new_user_session_path, class: style)
      else
        link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end
  def sample_helper
    content_tag(:div, "my content", class: "my-class")
  end
  def regg_helper(layout_name)
    if session[:regg]
      greeting = "Seasons greetings from #{session[:regg]}. You are on the #{layout_name} layout."
      content_tag(:p, greeting, class: "regg-greeting")
    end
  end
end

def copyright_generator
  LandonViewTool::Renderer.copyright 'Landon Graff', 'All rights reserved'
end