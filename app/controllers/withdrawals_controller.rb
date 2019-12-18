class WithdrawalsController < ApplicationController
layout "listing"
 def index
    
    @withdrawals = Withdrawal.where(user_id:current_user)
   
  end




  def create
    @investment = Investment.find(params[:investment_id])
    @withdrawal =current_user.withdrawals.create(params[:withdrawal].permit(:investment_id,:Account,:Amount,:payable,:capital,:last_with))

    if @withdrawal.save
    	 render :js => "window.location = '/investments'"
        end
       end

     end


   
 