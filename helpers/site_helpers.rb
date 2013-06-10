# encoding: UTF-8
module SiteHelpers

  def page_title
    data.page.title ? "#{data.page.title} | Julio" : "Julio"
  end

  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "Set your site description in /helpers/site_helpers.rb"
    end
    description
  end

end