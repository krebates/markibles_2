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
    ActionMailer::Base.deliveries = []

    # user = FactoryGirl.build(:user)
    # user2 = FactoryGirl.build(:user)
    sign_up
    add_product
    click_link 'Sign Out'
    # sign_in

    user = FactoryGirl.build(:user)
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    # save_and_open_page
    save_and_open_page
    click_on 'List a Food Item!'
    click_link 'Sweet Cake'
    click_link 'Contact me'

    # fill_in 'subject', with: "Would like to know more of your cake"
    # fill_in 'text', with: "reach me to tell me more"
    # click_link 'Send'

    # expect(page).to have_content "Your email is sent! Thank You!"
    # expect(ActionMailer::Base.deliveries.size).to eql(1)




    # click_on "Contact Me"
    # fill_in "Email", with: "great@email.com"
    # fill_in "Subject", with: "Great Subject"
    # fill_in "Text", with: "Awesome Text"
    # fill_in "First name", with: "Krystle"
    # fill_in "Last name", with: "Bates"
    # click_on "Send My Message!"

    # expect(page).to have_content "Your email is sent! Thank You!"
    # expect(ActionMailer::Base.deliveries.size).to eql(1)
    end
  end

end

