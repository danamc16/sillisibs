class UsersController < ApplicationController
	before_action :signed_in_user

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

	private 

	def signed_in_user
    unless signed_in?
      store_location
      redirect_to :root, notice: "Please sign in with CAS."
    end
  end

end
