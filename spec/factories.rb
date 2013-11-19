FactoryGirl.define do
  factory :user do
    name     "Jack Smith"
    email    "jack@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end