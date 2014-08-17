class SessionsController < ApplicationController
	 before_filter CASClient::Frameworks::Rails::Filter

	 def new
	 	netid
	 	if netid == 'dmc225'
	 		flash[:success] = "You have logged in as an admin!"
	 		redirect_to admin_path
	 	else
	 		flash[:success] = "Successful signin!"
	 		redirect_to search_path
	 end

	 def destroy
	 	sign_out_CAS
	 end

  end

end
