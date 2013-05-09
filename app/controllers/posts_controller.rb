class PostsController < ApplicationController
  def new
  end

	def create
		@post = Post.new(params[:post])
		@post.user_id = current_user.id

		if @post.save
			flash[:success] = "Yay for links!"
			redirect_to home_path
		else
			flash.now[:error] = "Problem with yr link yo!"
			redirect_to home_path
		end
	end

	def index
		@posts = Post.all
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update_attributes(params[:post])
			redirect_to home_path notice: "Updated."
		else
			render action: "edit" 	
		end
		
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to home_path
	end



end
