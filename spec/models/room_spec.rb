require 'spec_helper'

describe Room do
  describe 'Validations' do
    let (:blank) { [nil, ''] }

    it { should_not have_valid(:name).when(*blank) }
    it { should_not have_valid(:user).when(nil) }

  end

  describe 'Associations' do

    it {should belong_to(:user) }

  end

end