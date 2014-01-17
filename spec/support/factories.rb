# FactoryGirl.define do
#   factory :user do
#     sequence(:email) {|n| "person#{n}@example.com" }
#     username 'girliename'
#     first_name 'Krystle'
#     last_name 'Bates'
#     password 'password'
#     password_confirmation 'password'

#     factory :user_with_store do
#       after(:create) {|user| FactoryGirl.create(:seller, user: user)}
#     end
#   end

#   factory :category do
#     name 'cake'
#   end

#   factory :seller do
#     name "Baker's Name"
#     store_website "www.bakersite.com"
#     user
#   end

#   factory :products do
#     name "Sweet Cake"
#     photo "pic"
#     description "It's tasty"
#     price 5
#     category
#   end
# end
