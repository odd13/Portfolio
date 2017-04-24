class ArticlesController < BaseController

  def index
    @articles = Article.order(created_at: :desc).all
    bind_skills_and_disciplines
  end

  def show
    @article = Article.find(params[:id])
    bind_skills_and_disciplines
  end

  def new
    @article = Article.new
    bind_skills_and_disciplines
  end

  def edit
    @article = Article.find(params[:id])
    bind_skills_and_disciplines
  end

  def create
    bind_skills_and_disciplines
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    bind_skills_and_disciplines
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    bind_skills_and_disciplines
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text, :thumbnail_url)
    end
end
