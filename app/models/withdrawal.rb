class Withdrawal < ApplicationRecord
  belongs_to :user
  belongs_to :investment
  before_save :breakdown
  after_save :update_event_status
  require 'date'

 def update_event_status
    investment.update_attributes(last_wd:Date.today)
  end 
def breakdown
    now = Date.today
    before = self.last_with
    days = (now - before).to_i
	period = 90
    rate = 0.02
    
    self.Amount = self.capital * days * rate
     

 end

end