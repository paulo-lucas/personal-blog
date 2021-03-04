module ApplicationHelper
  def app_owner
    "Paulo Lucas Cerqueira"
  end

  def article_path(article)
    "/#{article.id}"
  end
end
