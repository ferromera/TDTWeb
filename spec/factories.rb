FactoryGirl.define do
  factory :user do
    name     "Michael"
    email    "michael@example.com"
    team      2
    lastname  "Hartl"
    password "foobar"
    password_confirmation "foobar"
  end
end