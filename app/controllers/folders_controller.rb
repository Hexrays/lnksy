class FoldersController < ApplicationController
  def new
  end

  def show
    @posts = Post.all
    @post = Post.new
		@folder = Folder.find(params[:id])
    @users = User.all
		@user = User.find(params[:id])
    # @folder = Folder.where(:name => params[:name]).first
  end

	def create
		@folder = Folder.new(params[:folder])
		@folder.user_id = current_user.id

		if @folder.save
			flash[:success] = "Yay for new places to store things!"
			redirect_to root_url
		else
			flash.now[:error] = "Problem with yr folder yo!"
			redirect_to root_url
		end
	end

	def index
		@folders = Folder.all
	end

  def edit
  	@folder = Folder.find(params[:id])
  end

  def update
    @folder = Folder.find(params[:id])

    if @folder.update_attributes(params[:folder])
      redirect_to root_url notice: "Updated."
    else
      render action: "edit"   
    end
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to root_url
  end
end
