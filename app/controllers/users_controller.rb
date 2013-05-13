class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Signed Up! Welcome new user!"
  	else
  		render "new"
  	end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def show
    @posts = Post.all
    @post = Post.new
    @folder = Folder.new
    @folders = Folder.all
    @user = User.where(:username => params[:username]).first
    @users = User.all
  end
end
