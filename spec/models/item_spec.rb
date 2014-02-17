require 'spec_helper'

describe Item do
  describe 'Validations' do
    let (:blank) { [nil, ''] }

    it { should_not have_valid(:name).when(*blank) }
    it { should_not have_valid(:user).when(nil) }
    it { should_not have_valid(:room).when(nil) }
    it { should_not have_valid(:box).when(nil) }

  end

  describe 'Associations' do

    it { should belong_to(:user) }
    it { should belong_to(:room) }
    it { should belong_to(:box) }

  end

end