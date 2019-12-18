class Investment < ApplicationRecord
belongs_to :user
has_many :withdrawals, dependent: :destroy
has_many :comments, dependent: :destroy
attribute :last_wd, :date, default: -> { Date.today }
attribute :next_w_date, :date, default: -> { Date.today + 20 }
before_save :default_values,:returns
validates_presence_of :capital, message: 'Capital cannot be blank' 
validates_presence_of :package, message: 'Package cannot be blank' 
 
def default_values
    self.daily ||= '0'  
  end

def returns

	if self.package == 'Local'

    period = 90
    rate = 0.02
    
  self.i_return = self.capital * rate * period 
  self.w_date =  Date.today + period 
   self.next_w_date = Date.today + 20

  else if self.package == 'Local Extra'

    period = 50
    rate = 0.027

    self.i_return = self.capital * rate * period 
      
    self.w_date =  Date.today + period 
    self.next_w_date = Date.today + 40

  else if self.package == 'International'

    period = 90
    rate = 0.02

    self.i_return = self.capital * rate * period 
    self.w_date =  Date.today + period 
    self.next_w_date = Date.today + 40 
    end
    end
  	end
 

  	end

   



end
