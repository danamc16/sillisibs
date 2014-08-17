class UsersController < ApplicationController
	def signin
	end

	def show
		@user = User.find_by(:id => params[:id])
		@family = @user.family
	end

	def admin
	end

	def search
	end

	
end
