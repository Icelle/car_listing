# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car, :class => 'Car' do
    color "Blue"
    year 2001
    mileage "9.99"
    description "Sedan"
  end
end
