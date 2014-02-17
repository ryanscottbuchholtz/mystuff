require 'spec_helper'

describe User do
  describe 'Validations' do
    let (:blank) { [nil, ''] }

    it { should_not have_valid(:first_name).when(*blank) }
    it { should_not have_valid(:last_name).when(*blank) }
    it { should_not have_valid(:email).when(*blank) }

  end

  describe 'Associations' do

    it { should have_many(:boxes) }
    it { should have_many(:items) }
    it { should have_many(:rooms) }

  end

end
