class FollowingsController < ApplicationController
  def index 
    @title = 'Following'
    @user = User.find params[:id]
    @users = @user.following.paginate page: params[:page] 
  end
end
