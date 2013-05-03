class FoldersController < ApplicationController
  def new
  end

	def create
		@folder = Folder.new(params[:folder])
		@folder.user_id = current_user.id

		if @folder.save
			flash[:success] = "Yay for new places to store things!"
			redirect_to current_user
		else
			flash.now[:error] = "Problem with yr folder yo!"
			redirect_to current_user
		end
	end

	def index
		@folder = Folder.all
		@new_folder = Folder.new
	end
end
