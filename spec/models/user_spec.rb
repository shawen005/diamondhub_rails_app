require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
  	before do
  		@user = User.create(email: "test@test.com", password: "asdfasdfs1", password_confirmation: "asdfasdfs1", name: "Jon snow",phone: "09032992991")
  	end

  	it "can be created" do
  		expect(@user).to be_valid
  	end

  	it "cannot be created without name, phone number" do
  		@user.name = nil
      @user.phone = nil
  		
  		expect(@user).to_not be_valid
  	end
  end
end