class CommentUsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def create
    @comment_user = comment_user.new(comment_user_params)

    if @comment_user.save
      render json: @comment_user, status: :created, location: @comment_user
    else
      render json: @comment_user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment_user.update(comment_user_params)
      render json: @comment_user
    else
      render json: @comment_user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment_user.destroy
  end

  private

  def set_user
    @comment_user = comment_user.find(params[:id])
  end

  def user_params
    params.require(:comment_user).permit(:user_id, :user_type, :user_name)
  end
end
