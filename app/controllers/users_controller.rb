class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to root_url, :notice => "Signed Up!"
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
    @user = User.find(params[:id])
    # @new_user = User.new
    # @user = current_user
  end
end
