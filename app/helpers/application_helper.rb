
module ApplicationHelper
  def login_helper 
  name = current_user.name
      
   
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Jordan Hudgens', 'All rights reserved'
  end



  def nav_items
    [
      {
        url: home_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Us'
      },
      {
        url: faq_path,
        title: 'FAQ'
      },
      
      {
        url: terms_path,
        title: 'Terms and Condition'
      },
      {
        url: contact_path,
        title: 'Contact Us'
      },
      
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<li><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></li>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

end