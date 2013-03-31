# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :standings do
    teamname "MyString"
    played 1
    won 1
    draw 1
    lost 1
    goalsfor 1
    goalsagainst 1
    points 1
  end
end
