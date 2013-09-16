FactoryGirl.define do
  factory :user do
    name     "Hyo Jeong"
    email    "hyo.jeong@sv.cmu.edu"
    password "hyohyeon1"
    password_confirmation "hyohyeon1"
  end

  factory :member do
  	name	"John Doe"
  	user_id 1
  end
end