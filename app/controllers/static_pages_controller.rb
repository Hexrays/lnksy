class StaticPagesController < ApplicationController
	def home
		@posts = Post.all
		@new_post = Post.new
		@new_folder = Folder.new
		@folders = Folder.all
    @user = current_user
    @users = User.all
	end
	
end