require 'spec_helper'

describe Seller do

  it { should belong_to :user }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it { should have_many(:ratings), as: :ratable, dependent: :destroy}

  it 'validates the uniqueness of user_id' do
    Seller.new(name: 'cake', user_id: 2).save!(validate: false)
    should validate_uniqueness_of :user_id
  end

end
