class ArticlesController < ApplicationController
  layout "show"

  def show
    if is_number params[:id]
      article = Article.find_by_id(params[:id]) or render_404
      redirect_to "/#{article.alias}" if article
    else
      @article = Article.find_by_alias(params[:id]) or render_404
    end
  end

  private
    def is_number(id)
      id.to_i > 0
    end

    def render_404
      respond_to do |format|
        format.html { render :file => "#{Rails.root}/public/404.html", :layout => false, :status => :not_found }
        format.xml  { head :not_found }
        format.any  { head :not_found }
      end
    end
end
