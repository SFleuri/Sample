
FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
	 sequence(:name) { |n| "person_#{n}@example.com" }
    password "fooooo"
    password_confirmation "fooooo"
  end
end


