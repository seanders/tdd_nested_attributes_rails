class UsersController < ApplicationController
  def new
    @users = User.includes(:involvements).all
    @user = User.new
    @involvement = @user.involvements.build
    @responsibility = @involvement.responsibilities.build
    @region = Region.find(2)
  end

  def create
  @user = User.create params[:user]
  redirect_to :root
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
