class PostsController < ApplicationController

 def index
  @posts=Post.all
 end


 def new
  @user=User.find(params[:user_id])
  @post=@user.posts.new
 end


 def create
  @user=User.find(params[:user_id])
  @post=@user.posts.create(params[:post])
  redirect_to user_path(@user)
 end


 def show
  @user=User.find(params[:user_id])
  @post=@user.posts.find(params[:id])
 end


 def destroy
  @user=User.find(params[:user_id])
  @user.posts.destroy(params[:id]) 
  redirect_to user_path(@user)  
end


end
