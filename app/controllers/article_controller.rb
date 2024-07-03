class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end
   # GET /articles/1
   def show
   end

   # GET /articles/new
   def new
     @article = Article.new
   end
   # POST /articles
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: "Article was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content)
    end
end
