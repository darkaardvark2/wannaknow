# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    title "MyString"
    body "MyString"
    video "MyString"
    funded false
  end
end
