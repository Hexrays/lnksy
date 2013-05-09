class StaticPagesController < ApplicationController
	def home
		@posts = Post.all
		@post = Post.new
		@folder = Folder.new
		@folders = Folder.all
		# @new_user = User.new
		@user = current_user
	end
	
end