# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    name "MyString"
    customer "MyString"
    payment_status "MyString"
    fulfillment_status "MyString"
    total_price "9.99"
  end
end
