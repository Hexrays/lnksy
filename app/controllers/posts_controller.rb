class PostsController < ApplicationController
  def new
  end

	def create
		@post = Post.new(params[:post])
		@post.user_id = current_user.id

		if @post.save
			flash[:success] = "Yay for links!"
			redirect_to root_url
		else
			flash.now[:error] = "Problem with yr link yo!"
			redirect_to root_url
		end
	end

	def index
		@posts = Post.all
		@new_post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
		@posts = Post.all
    @new_post = Post.new
		# @folder = Folder.find(params[:id])
    @new_folder = Folder.new
    # @users = User.all
		@user = current_user
	end

	def update
		@post = Post.find(params[:id])
    @new_post = Post.new
    @new_folder = Folder.new
    
		if @post.update_attributes(params[:post])
			redirect_to root_url, notice: "Updated."
		else
			render action: "edit" 	
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_url
	end



end
