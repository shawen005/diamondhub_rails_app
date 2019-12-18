require 'rails_helper'

describe 'navigate' do
  before do
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope => :user)
  end

  describe 'index' do
    before do
      visit investments_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Investments' do
      expect(page).to have_content(/Investments/)
    end

    it 'has a list of posts' do
      investment1 = FactoryGirl.build_stubbed(:investment)
      investment2 = FactoryGirl.build_stubbed(:second_investment)
      visit investments_path
      expect(page).to have_content(/Dashboard Control panel\nHome Dashboard/)
    end
  end

  describe 'creation' do
    before do
      visit new_investment_path
    end

    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do
      fill_in 'investment[capital]', with: "20000"
      select 'Local', from: "investment[package]"
      click_on "Submit"

      expect(page).to have_content("Local Extra")
    end

    it 'will have a user associated it' do
      fill_in 'investment[capital]', with: "20000"
      select 'Local Extra', from: "investment[package]"
      click_on "Submit"

      expect(User.last.investments.last.capital).to eq(20000)
    end
  end

  

end