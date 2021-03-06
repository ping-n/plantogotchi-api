FactoryBot.define do
  factory :user do
    sequence :username do |n|
      "TestUsername#{n}"
    end
    sequence :email do |n|
      "email@email#{n}.com"
    end
    password { "secure_Password!" }
    bio { "This is an example bio statement." }
    location { "Location" }
    admin { false }
  end

  trait :admin do
    admin { true }
  end
  trait :invalid do
    username {nil}
  end

end
