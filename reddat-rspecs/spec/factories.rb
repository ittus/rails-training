FactoryGirl.define do
  factory :link do
    title "Testing Rails"
    url "http://google.com"

    trait :invalid do
      title nil
    end
  end
end
