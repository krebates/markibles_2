require'spec_helper'

feature 'user signs up', %Q{
# As a registered user, I want to be able to sign in so that I can browse and  sell food items or buy food items.

# As a registered, I must specify I must specify an email and a password.
# If I do not provide the required fields, I receive an error message.
# If I provide an email and password that matches the database with previously registered and confirmed account, I am granted access to the system where I can buy or sell food items.
# If I don't specify all the required information, I can't access the system where I can buy or sell food items.
}

scenario 'specifying valid and required information'
  # visit root_path
  # click_link 'Sign Up'
  # fill_in 'Email', with: 'user@example.com'
  # fill_in 'Passw'

scenario 'required information is not supplied'

scenario 'password confirmation does not match confirmation'

end


