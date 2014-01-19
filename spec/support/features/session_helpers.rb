module Features
  module SessionHelpers
    def sign_up
      visit root_path
      click_link 'Sign Up'
      fill_in 'First Name', with: 'Krystle'
      fill_in 'Last Name', with: 'Bates'
      fill_in 'Email', with: 'email@email.com'
      fill_in 'user_password', with: 'password'
      fill_in 'Password Confirmation', with: 'password'
      click_button 'Sign up'
    end

    def sign_in
      user = FactoryGirl.build(:user)
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign In'
    end

    def add_product
      click_on "List a Food Item"
      product = FactoryGirl.build(:product, name: "Better cake")
      # product.user_id = user.id
      fill_in 'Name', with: product.name
      fill_in 'Description', with: product.description
      fill_in 'Price', with: product.price
      click_button 'Add food item.'
    end

    def sign_in_2
      user = FactoryGirl.build(:user)
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign In'
    end
  end
end

