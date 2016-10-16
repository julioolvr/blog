module PostHelpers
  def tag_links(post)
    post.tags.map do |tag|
      link_to "\##{tag}", tag_path(tag)
    end.join(', ')
  end

  def codepen(id, options = {})
    "<p data-height=\"324\" data-theme-id=\"0\" data-slug-hash=\"#{id}\" data-default-tab=\"result\" class=\"codepen\">See the Pen <a href=\"http://codepen.io/julioolvr/pen/#{id}/\">#{id}</a> by joliv (<a href=\"http://codepen.io/julioolvr\">@julioolvr</a>) on <a href=\"http://codepen.io\">CodePen</a>.</p>" +
    "<script async src=\"//codepen.io/assets/embed/ei.js\"></script>"
  end

  def reading_time(article)
    seconds = ArticleReadingtime.estimate_html(article.body, wpm: 220)
    minutes = seconds / 60
    "#{[minutes, 1].max} min read"
  end
end
