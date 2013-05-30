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

  def show
    @posts = Post.all
    @new_post = Post.new
    @new_folder = Folder.new
    @folders = Folder.all
    # @user = User.where(:username => params[:username]).first
    # @user = User.find_by_username(params[:id])
    @user = User.find(params[:id])
    @users = User.all
  end

  def edit
  	@posts = Post.all
    @new_post = Post.new
    @new_folder = Folder.new
    # @folders = Folder.all
    # @user = User.where(:username => params[:username]).first
    # @user = User.find_by_username(params[:id])
    @user = User.find(params[:id])
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @new_post = Post.new
    @new_folder = Folder.new

    if @user.update_attributes(params[:user])
      redirect_to root_url, notice: "Updated."
    else
      render action: "edit"   
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_url
  end
end
