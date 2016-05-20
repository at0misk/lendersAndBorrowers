class UsersController < ApplicationController
  def index
  end
  def create
  	@User = User.new(user_params)
  	if @User.save
  		session[:user_id] = @User.id
  		if @User.account_type == "lender"
  		redirect_to "/lender/#{session[:user_id]}"
  		elsif @User.account_type == "borrower"
  		redirect_to "/borrower/#{session[:user_id]}"
  		end
  	else
  		flash[:errors] = @User.errors.full_messages
  		redirect_to :back
  	end
  end
  	def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :reason, :description, :request, :password, :balance, :account_type) 
  	end
end
