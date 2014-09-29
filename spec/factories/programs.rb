# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program do
    grades 1
    description_short "MyString"
    description_long "MyString"
    location "MyString"
    head_coach "MyString"
  end
end
