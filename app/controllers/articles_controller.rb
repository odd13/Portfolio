class ArticlesController < BaseController

  def index
    @articles = Article.all
    bind_skills_and_disciplines
  end

  def show
    @article = Article.find(params[:id])
    bind_skills_and_disciplines
  end
end
