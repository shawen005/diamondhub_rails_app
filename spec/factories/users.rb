FactoryGirl.define do
	sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    name 'Jon'
    email { generate :email }
    phone "09032992991"
    password "asdfasdf1"
    password_confirmation "asdfasdf1"
  end

  factory :second_user do
    name 'johanu'
    email { generate :email }
    phone "09032992991"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end