require 'spec_helper'

describe User do
   it { should has_one :seller }
   it { should has_many :ratings }

end
