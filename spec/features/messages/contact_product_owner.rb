require 'spec_helper'

feature 'contact form', %Q{As a user,
I want to be able to contact Markibles,
so that I can ask a question} do

# I must specify a valid email address
# I must specify a subject
# I must specify a description
# I must specify a first name
# I must specify a last name

  feature 'user reaches out to product owner' do
    scenario 'user has all valid criteria needed' do
    # ActionMailer::Base.deliveries = []

    # user = FactoryGirl.build(:user)
    # user2 = FactoryGirl.build(:user)
    sign_up
    add_product
    click_link 'Sign Out'

    user = FactoryGirl.create(:user)
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    click_on 'Find an item'
    click_link 'Better cake'
    click_link 'Contact me'

    fill_in 'Subject', with: "Would like to know more of your cake"
    fill_in 'Text', with: "reach me to tell me more"
    click_button 'Send My Message!'

    # expect(page).to have_content "Your email is sent! Thank You!"
    expect(ActionMailer::Base.deliveries.size).to eql(1)
    end
  end
end

