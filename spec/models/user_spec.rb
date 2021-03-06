require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when creating a new user' do
    subject(:user) {
      User.create!(
        email: 'batman@thebatcave.com',
        password: 'aquamansuxsomuch',
        password_confirmation: 'aquamansuxsomuch'
      )
    }

    it 'should have an auth token' do
      expect(user.auth_token).to_not be_blank
    end
  end
end
