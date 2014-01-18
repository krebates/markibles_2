FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "person#{n}@example.com" }
    first_name  'Krystle'
    last_name   'Bates'
    # email       'krebates@gmail.com'
    password    'password'
    password_confirmation 'password'
  end
    # factory :user_with_store do
    #   after(:create) {|user| FactoryGirl.create(:seller, user: user)}
    # end


  factory :seller do
    name "Baker's Name"
    store_website "www.bakersite.com"
  end

  factory :products do
    name "Sweet Cake"
    photo "pic"
    description "It's tasty"
    price 5
  end
end
