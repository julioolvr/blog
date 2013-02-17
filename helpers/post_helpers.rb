module PostHelpers
  def tag_links(post)
    post.tags.map do |tag|
      link_to tag, tag_path(tag)
    end.join(', ')
  end
end