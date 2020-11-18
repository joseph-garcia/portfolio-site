module ApplicationHelper
  def login_helper(style="")
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe + 
      (link_to "Login", new_user_session_path, class: style)      
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def sample_helper
    content_tag(:div, "my conrent", class: "my-class")
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def nav_helper(style, tag_type)
nav_links = <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{about_path}" class="#{style}">About Me</a></#{tag_type}>
NAV

    nav_links.html_safe
  end

end
