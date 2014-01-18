module Features
  module SessionHelpers
    def sign_up
      visit root_path
      click_link 'Sign Up'
      fill_in 'First Name', with: 'Krystle'
      fill_in 'Last Name', with: 'Bates'
      fill_in 'Email', with: 'user@example.com'
      fill_in 'user_password', with: 'words12345'
      fill_in 'Password Confirmation', with: 'words12345'
      click_button 'Sign up'
    end

    def sign_in
      user = FactoryGirl.create(:user)
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign In'
    end

    def add_product
      click_on "List a Food Item"
      product = FactoryGirl.create(:product)
      fill_in 'Name', with: product.name
      fill_in 'Description', with: product.description
      fill_in 'Price', with: product.price

      click_link 'Add food item.'

    end
  end
end

