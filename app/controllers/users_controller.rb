class UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def create
    @user = user.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = user.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user_id, :user_type, :user_name)
  end
end