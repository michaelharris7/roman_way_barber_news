class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

  # GET /articles
  def index
    @articles = Article.all

    render json: @articles
  end

  # GET /proposals/1
  def show
    render json: @article
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
