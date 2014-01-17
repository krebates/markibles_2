require 'spec_helper'

# As a baker, I want to be able to upload content about my food item, so that potential buyers can reach me if they are interested in purchasing them.

# I must be able to create a new profile for each item that I am selling.
# I must be able to provide a name, price, description of the item, and time needed to make the item.
# I must be able to upload photos that are related to the product.
# I must have my contact information from my baker profile populate the food item page automatically as 'contact information'

feature 'seller adds a food item' do

  scenario 'user creates an account successfully' do
    category = FactoryGirl.create(:category)
      visit root_path
      click_on "List a Food Item!"
      product = FactoryGirl.create(:product)
      fill_in "Photo", with: "Photo"
      select  "Cake", from: "Category"
      click_on "Add item"

      expect(page).to have_content "Bourbon Cake"
      expect(page).to have_content "Sweet sweet goodness"
      expect(page).to have_content "girliename"
    end
  end

  scenario 'user creates an account missing mandatory description field' do
    category = FactoryGirl.create(:category)
      visit root_path
      click_on "List a Food Item!"
      fill_in name "Sweet Cake"
      fill_in photo "pic"
      fill_in price 5
      fill_in "Photo", with: "Photo"
      select  "Cake", from: "Category"
      click_on "Add item"

      expect(page).to have_content "Bourbon Cake"
      expect(page).to have_content "Sweet sweet goodness"
    end
  end




end
