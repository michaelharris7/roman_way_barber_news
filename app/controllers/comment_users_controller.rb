class CommentUsersController < ApplicationController
  before_action :set_comment_user, only: [:show, :update, :destroy]

  def index
    @comment_users = CommentUser.all
    render json: @comment_users
  end

  def show
    @comment_users = CommentUser.includes(:comments).find(params[:id])
    @comment = Comment.new

    render json: @comment_users
  end

  def create
    @comment_user = CommentUser.new(comment_user_params)

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

  def set_comment_user
    @comment_user = CommentUser.find(params[:id])
  end

  def comment_user_params
    params.require(:comment_user).permit(:user_id, :user_type, :user_name)
  end
end
