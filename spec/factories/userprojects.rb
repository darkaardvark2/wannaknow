# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :userproject do
    user_id 1
    project_id 1
    expert false
  end
end
