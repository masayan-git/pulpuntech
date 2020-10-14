class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # before_action :find_writer, only: :show
  before_action :category_all, only: [:index, :show]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
    @num = 2
    @profiles = Profile.all
    @techcamps = ArticleCategory.where(category_id: 1)
    @jobs = ArticleCategory.where(category_id: 2)
    @codes = ArticleCategory.where(category_id: 3)
    @lives = ArticleCategory.where(category_id: 4)
  end
  
  def show
    @article = Article.find(params[:id])
    # @writer = @article.writer
  end
  
  def search
    @articles = SearchArticlesService.search(params[:key_word])
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end
  
  # Only allow a list of trusted parameters through.
  def article_params
    params.fetch(:article, {})
  end
  
  def category_all
    @categories = Category.all
  end
end

