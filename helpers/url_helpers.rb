# encoding: UTF-8
module UrlHelpers

  DOMAIN = "http://joliv.me"

  def absolute_url(path)
    "#{DOMAIN}/#{path}" unless path.nil? || path.empty?
  end

end
