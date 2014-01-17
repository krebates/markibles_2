require 'spec_helper'

#  As a buyer,
#  I want to be able to create an account,
#  so that I can buy items on the account

# I should see an area where I can create a new account.
# I must include my name, email, and description of myself.
# I must include a photo for my profile.

feature 'user creates a store to sell items' do
  let(:user) {FactoryGirl.create(:user_with_store)}

  scenario 'user completes form will all valid fields' do
    # you dont have a signed in user for the test
    sign_in_as user
    visit root_path
    click_on 'Create a store'
    fill_in "Name", with: "Sweet Shop"
    fill_in "Store Website", with: "www.sweetshop.com"
    click_on "Create my store!"
    expect(page).to have_content "You have created a store"
  end

  # scenario 'user does not complete form with name' do
  #   visit root_path
  #   click_on 'Create a store'
  #   fill_in "Store Website", with: "www.sweetshop.com"
  #   click_on "Create my store!"

  #    expect(page).to have_content("can't be blank")

  # end

  scenario 'user creates a store after they already have one' do
    seller = FactoryGirl.create(:seller)
    visit root_path
    click_on 'Create a store'
    fill_in "Name", with: "Baker's Name"
    fill_in "Store Website", with: "www.bakersite.com"

    expect(page).to have_content("Unable to make store")
  end

   scenario 'user edit store' do
    # user = FactoryGirl.create(:user)
    # seller = FactoryGirl.create(:seller, user: user)
    sign_in_as user
    visit sellers_path
    click_on "Edit"
    fill_in "Name", with: "Princess Cupcakes"
    click_on "Create my store!"

    expect(page).to have_content "Princess Cupcakes"
  end

  scenario 'user deletes store' do
    sign_in_as user

    visit sellers_path
    click_on "Delete information"

    expect(page).not_to have_content user.seller.name
  end

end

