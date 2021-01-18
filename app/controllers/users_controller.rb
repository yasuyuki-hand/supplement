class UsersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      abort
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have updated user successfully."
    else
      
      render "edit"
    end
  end

  private
  def user_params
    params.require(:user).permit(:picture, :name, :nickname, :weight, :height, :gender, :comment)
  end


end
