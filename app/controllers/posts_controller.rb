class PostsController < ApplicationController
  def new
  end

	def create
		@post = Post.new(params[:post])
		@post.user_id = current_user.id

		if @post.save
			flash[:success] = "Yay for links!"
			redirect_to current_user
		else
			flash.now[:error] = "Problem with yr link yo!"
			redirect_to current_user
		end
	end

	def index
		@posts = Post.all
		@post = Post.new
	end
end
