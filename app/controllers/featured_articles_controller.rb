class FeaturedArticlesController < ApplicationController
  before_action :set_featured_article, only: [:show, :update, :destroy]

  def index
    @featured_articles = FeaturedArticle.all
    render json: @featured_articles
  end

  def show
    @featured_article = FeaturedArticle.find(params[:id])

    render json: @featured_article
  end

  def create
    @featured_article = FeaturedArticle.new(featured_article_params)

    if @featured_article.save
      render json: @featured_article, status: :created, location: @featured_article
    else
      render json: @featured_article.errors, status: :unprocessable_entity
    end
  end

  def update
    if @featured_article.update(article_params)
      render json: @featured_article
    else
      render json: @featured_article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @featured_article.destroy
  end

  private

  def set_featured_article
    @featured_article = FeaturedArticle.find(params[:id])
  end

  def featured_article_params
    params.require(:featured_article).permit(:article_id, :title, :content)
  end
end
