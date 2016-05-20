class BorrowersController < ApplicationController
  def show
  	@user = User.find(session[:user_id])
  	@lenders = Joins.where(borrower_id: session[:user_id])
  end
end
