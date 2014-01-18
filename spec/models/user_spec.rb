require 'spec_helper'

describe User do
  it { should have_many :messages }

  it { should validate_presence_of(:first_name) }
  it { should have_valid(:first_name).when('John', 'Sally') }
  it { should_not  have_valid(:first_name).when(nil, '', ' ') }

  it { should validate_presence_of(:last_name) }
  it { should have_valid(:last_name).when('John', 'Sally') }
  it { should_not  have_valid(:last_name).when(nil, '', ' ') }

  it { should have_one :seller }
  it { should have_many :ratings }

  it { should allow_value('words@info.com').for(:email) }
  it { should_not allow_value('dljaklf@lakjfkla').for(:email)}


  it 'has a matching password confirmation for the password' do
    user = User.new
    user.password = 'password'
    user.password_confirmation = 'anotherpassword'

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end


end
