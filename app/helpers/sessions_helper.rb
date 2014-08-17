module SessionsHelper

  #Pulling the netid
  def netid
    @netid ||= session[:cas_user]
  end


	#signing in methods
  # def sign_in
  #     remember_token = User.new_remember_token
  #     cookies.permanent[:remember_token] = remember_token
  #     user.update_attribute(:remember_token, User.digest(remember_token))
  #     @current_user = user 
  # end

  def signed_in?
    !@netid.nil?
  end

#signing out method  
  # def sign_out_locally
  #   current_user.update_attribute(:remember_token,
  #                                 User.digest(User.new_remember_token))
  #   cookies.delete(:remember_token)
  #   self.current_user = nil
  # end

  def sign_out_CAS
    CASClient::Frameworks::Rails::Filter.logout(self)
  end

#current user methods
  # def current_user=(user)
  #   @current_user = user
  # end

  # def current_user 
  #   remember_token = User.digest(cookies[:remember_token])
  #   @current_user ||= User.find_by(remember_token: remember_token)
  # end

  # def current_user?(user)
  #   user == current_user
  # end

#kind redirection when not signed in
  def store_location
    session[:return_to] = request.url if request.get?
  end

  def redirect_back_or(default)
    redirect_to (session[:return_to] || default)
    session.delete(:return_to)
  end
end
