# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [:owner, :author] do
    name "MyString"
    birthday "2014-01-30"
  end
end
