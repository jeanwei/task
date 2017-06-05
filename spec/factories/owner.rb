FactoryGirl.define do
  factory :owner do
    email 'john@example.com'
    password  '123456'
    password_confirmation '123456'
  end
end