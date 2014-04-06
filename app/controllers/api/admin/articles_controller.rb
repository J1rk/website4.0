class Api::Admin::ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  def index
    articles = Article.all
    render json: articles, status: :ok
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      head :no_content
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:date, :title, :permalink, :content, :language, :published, :menu_id, :gallery_id)
    end
end
