require 'rails_helper'

RSpec.describe Investment, type: :model do
  describe "Creation" do
  	before do
  		@investment = FactoryGirl.create(:investment)
  	end

  	it 'can be created' do	
  		expect(@investment).to be_valid
  	end

  	it 'cannot be created without a package and capital' do
  		@investment.package = nil
  		@investment.capital = nil
  		expect(@investment).to_not be_valid
  	end
  end
end