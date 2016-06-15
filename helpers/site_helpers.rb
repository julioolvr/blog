# encoding: UTF-8
module SiteHelpers

  def page_title
    data.page.title ? "#{data.page.title} | Julio" : "Julio"
  end

  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "Blog"
    end
    description
  end

  def html_to_plain_text(html)
    Nokogiri::HTML(html).text
  end

  def gravatar_url
    'http://www.gravatar.com/avatar/a81ad64d19c864be3c478b761f4b4817?s=300'
  end

end
