# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'casclient'
require 'casclient/frameworks/rails/filter'

# Initialize the Rails application.
Rails.application.initialize!

# cas_logger = CASClient::Logger.new(::Rails.root+'/log/cas.log')
# cas_logger.level = Logger::DEBUG

CASClient::Frameworks::Rails::Filter.configure(
  :cas_base_url => "https://secure.its.yale.edu/cas/",
  :username_session_key => :cas_user, 
  :extra_attributes_session_key => :cas_extra_attributes
  )
