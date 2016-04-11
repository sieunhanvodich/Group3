class SessionsController < ApplicationController
	def new
	end
	def create
        @user = User.find_by_email(params[:session][:email])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            redirect_to '/'
        else
            redirect_to 'http://localhost:3000/login'
            flash[:error]="Email hoặc mật khẩu không chính xác"
        end 
    end
    def destroy 
        session[:user_id] = nil 
        redirect_to '/' 
    end

end
