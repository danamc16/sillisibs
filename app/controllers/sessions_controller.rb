class SessionsController < ApplicationController
	 before_filter CASClient::Frameworks::Rails::Filter
end
