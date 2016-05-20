class LendersController < ApplicationController
  def show
  	@user = User.find(session[:user_id])
  	@inNeed = User.where(account_type: "borrower")
  	@lentTo = Joins.where(lender_id: session[:user_id])
  end
  def create
  	@user = User.find(params[:id])
  	puts "#{@user.balance}"
  	@current = User.find(session[:user_id])
  	if (@current.balance.to_f <= 0)
  		flash[:errors] = ["You don't have any money!"]
  		redirect_to :back
  	else
  	@user.increment!(:balance, params[:ammount].to_f)
  	@user.decrement!(:request, params[:ammount].to_f)
  	@current.decrement!(:balance, params[:ammount].to_f)
  	if Joins.find_by(borrower_id: params[:id], lender_id: session[:user_id])
  		@upJoin = Joins.find_by(borrower: params[:id], lender: session[:user_id])
  		@upJoin.increment!(:ammount, params[:ammount].to_f)
  		redirect_to :back
  	else
  	@Join = Joins.new(borrower_id: @user.id, lender_id: @current.id, ammount: params[:ammount].to_f)
  	@Join.save
  	redirect_to :back
 	end
  end
  end
end
