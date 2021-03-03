module ApplicationHelper
  def app_owner
    "Paulo Lucas"
  end

  def article_path(article)
    "/#{article.id}"
  end
end
