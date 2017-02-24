class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def index
    @users=User.all
  end
  def create
    @users=User.new(users_param)
    if @users.save
      redirect_to users_url
    else
      render 'new'
    end
  end
  private
  def users_param
    params.require(:user).permit(:name,:email,:password,:mobile,:city)
  end
end
