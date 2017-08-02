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


  def copyright_generator
    LandonViewTool::Renderer.copyright 'Landon Graff', 'All rights reserved'
  end
  
  def nav_items
    [
      {
        url: root_path,
        title: "Home"
      },
      {
        url: contact_path,
        title: "Contact"
      },
      {
        url: about_path,
        title: "About"
      },
      {
        url: blogs_path,
        title: "Blogs"
      },
      {
        url: portfolios_path,
        title: "Portfolios"
      }
      
    ]
  end
  
  def nav_helper style, tag_type = ''
    nav_links = ''
    
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
  end

#

    nav_links.html_safe
  end
  def active? path
    "active" if current_page? path
  end
end
