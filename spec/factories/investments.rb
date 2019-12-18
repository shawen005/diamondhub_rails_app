FactoryGirl.define do
  factory :investment do
    last_wd Date.today
    capital "20000"
    package  "Local"
    user
  end

  factory :second_investment, class: "Investment" do
    last_wd Date.today
    capital "300000"
    package  "Local Extra"
  end
end