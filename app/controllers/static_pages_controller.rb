class StaticPagesController < ApplicationController
	def home
		@posts = Post.all
		@post = Post.new
		@folder = Folder.new
		@folders = Folder.all
	end
	
end