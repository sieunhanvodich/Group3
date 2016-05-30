class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user 
    def current_user
       @current_user ||= User.find(session[:user_id]) if session[:user_id] 
       rescue ActiveRecord::RecordNotFound => e
    end

    def require_user 
       redirect_to '/login' unless current_user 
    end

    # if current_user.try(:admin?)
    #  redirect_to '/categories' 
    # end

end
