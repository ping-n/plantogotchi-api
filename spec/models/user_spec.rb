require 'rails_helper'

RSpec.describe User, type: :model do
  subject {build(:user)}

  context 'validations' do
    it 'has a valid factory' do
      expect(build(:user)).to be_valid
    end

    it { expect(subject).to validate_presence_of(:username) }
    it { expect(subject).to validate_presence_of(:password) }
    it { expect(subject).to validate_presence_of(:email) }
    it { expect(subject).to validate_length_of(:username).is_at_least(3).on(:create) }
    it { expect(subject).to validate_length_of(:password).is_at_least(8).on(:create) }

    it 'is not valid with an email without @ symbol' do
      subject.email = 'emailatemail.com'
      expect(subject).to_not be_valid
    end

    it 'is not valid with an email without .com' do
      subject.email = 'emailatemailcom'
      expect(subject).to_not be_valid
    end

  end
end

  