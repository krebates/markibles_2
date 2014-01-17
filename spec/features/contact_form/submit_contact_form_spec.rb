require 'spec_helper'

feature 'contact form', %Q{As a user,
I want to be able to contact Markibles,
so that I can ask a question} do

# I must specify a valid email address
# I must specify a subject
# I must specify a description
# I must specify a first name
# I must specify a last name

  feature 'user completes form with valid attributes' do
    scenario 'user has all valid criteria needed' do
    ActionMailer::Base.deliveries = []

    visit root_path
    click_on "Contact Us!"
    fill_in "Email", with: "great@email.com"
    fill_in "Subject", with: "Great Subject"
    fill_in "Text", with: "Awesome Text"
    fill_in "First name", with: "Krystle"
    fill_in "Last name", with: "Bates"
    click_on "Send My Message!"

    expect(page).to have_content "Your email is sent! Thank You!"
    expect(ActionMailer::Base.deliveries.size).to eql(1)
    end
  end

end

