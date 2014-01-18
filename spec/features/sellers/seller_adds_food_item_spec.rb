require 'spec_helper'

feature 'user adds a food item' do

# As a baker, I want to be able to upload content about my food item, so that potential buyers can reach me if they are interested in purchasing them.

# I must be able to create a new profile for each item that I am selling.
# I must be able to provide a name, price, description of the item, and time needed to make the item.
# I must be able to upload photos that are related to the product.
# I must have my contact information from my baker profile populate the food item page automatically as 'contact information'

  scenario 'user creates an account successfully' do
      current_user = FactoryGirl.create(:user)
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: current_user.email
      fill_in 'Password', with: current_user.password
      click_button 'Sign In'

      click_on "List a Food Item"
      product = FactoryGirl.build(:product)
      product.user_id = current_user.id
      save_and_open_page
      fill_in 'Name', with: product.name
      fill_in 'Description', with: product.description
      fill_in 'Price', with: product.price

      click_button 'Add food item'

      expect(page).to have_content "Sweet Cake"
      expect(page).to have_content "It's tasty"
      expect(page).to have_content 5

  end

  # scenario 'user creates an account missing mandatory description field' do
  #   user = FactoryGirl.create(:user)
  #     visit root_path
  #     click_on "List a Food Item!"
  #     fill_in name "Sweet Cake"
  #     fill_in photo "pic"
  #     fill_in price 5
  #     click_on "Add item"

  #     expect(page).to have_content "Bourbon Cake"
  #     expect(page).to have_content "Sweet sweet goodness"

  # end
end
