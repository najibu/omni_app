class SessionsController < ApplicationController
	def create
		auth = request.env["omniauth.auth"]
		session[:omniauth] = auth.except('extra')
		user = User.sign_in_form_omniauth(auth)
		session[:user_id] = user.id
		redirect_to root_url, notice: "SIGNED IN" 
	end

	def destroy
		session[:user_id] = nil 
		session[:amniauth] = nil 
		redirect_to root_url, notice: "SIGNED OUT"
	end
end
