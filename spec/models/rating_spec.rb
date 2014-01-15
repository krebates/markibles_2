require 'spec_helper'

describe Rating do

it { should validate_presence_of :overall_rating }
it { should validate_presence_of :flavor }
it { should validate_presence_of :presentation }
it { should belong_to(:user) }
it { should belong_to(:product) }
it { should belong_to(:seller) }
it { should belong_to(:ratable)}

# destroy if product deleted
# destroy if seller deleted
end
