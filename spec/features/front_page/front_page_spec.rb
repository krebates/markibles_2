require 'spec_helper'

feature 'front_page', %Q{
  As a new visitor to the site,
  I want to be able to see the front page,
  so that I can understand what the site is about.
  } do

# I should see photos of the baked items.
# I should see an area that allows me to read further information about the site.
# I should see an area that allows me to to create an new account.
# I should see an area that will allow me to log-in.

  scenario 'button for use to create a new account' do
    visit root_path
    find_link('Sign Up').visible?
  end

  scenario 'user for use to sign-in into their current account' do
    visit root_path
    find_link('Sign In').visible?
  end
end
