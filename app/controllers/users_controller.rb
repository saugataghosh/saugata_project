class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def show
    @user=User.find(params[:id])
  end
  def new
    @user=User.new
  end
  def create
    @user = User.new(params[:user])
 
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@user).deliver
 
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end
    def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
  def edit
    @user=User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to users_path
  end
end

