class FeaturesController < ApplicationController
  before_action :set_feature, only: [:update, :destroy]

  def index
    @features = Feature.all
    render json: @features
  end

  def create
    @feature = Feature.new(article_params)

    if @feature.save
      render json: @feature, status: :created, location: @feature
    else
      render json: @feature.errors, status: :unprocessable_entity
    end
  end

  def update
    if @feature.update(article_params)
      render json: @feature
    else
      render json: @feature.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @feature.destroy
  end

  private

  def set_article
    @feature = Feature.find(params[:id])
  end

  def article_params
    params.require(:feature).permit(:article_id, :title, :content)
  end
end

end
