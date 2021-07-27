class UsersController < ApplicationController
  def show
    @user =User.find(params[:id])
   # @profile_image = profile_image.find(params)
  end



  def index
  end
end
