class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :wasdeonrails

  def wasdenonrails
    if request.env["HTTP_HOST"] == "www.wasdenonrails.com"
      redirect_to "http://radiant-lowlands-4251.herokuapp.com/"
    end
  end
end
