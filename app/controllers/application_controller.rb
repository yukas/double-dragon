class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def self.protect_with_basic_authentication
    http_basic_authenticate_with name: "admin", password: "secret"
  end
end
