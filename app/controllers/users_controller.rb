class UsersController < ApplicationController
	before_action :authenticate_user!


  
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
    @books = @user.books.paginate(page: params[:page])

    @reservations = Reservation.where("user_id = ?", @user)
    
  	
  end

  def following
      @user  = User.find(params[:id])
      @users = @user.followings
      render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end

  
end
