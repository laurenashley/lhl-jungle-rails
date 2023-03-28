require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "has a password" do
      user = User.new
      user.name = 'Test User'
      user.password = nil
      user.password_confirmation = '12345678'
      user.email = 'test@TEST.com'

      expect(user).to_not be_valid
    end
    it "has a password confirmation value that matches password" do
      user = User.new
      user.name = 'Test User'
      user.password = '12345678'
      user.password_confirmation = nil
      user.email = 'test@TEST.com'

      expect(user).to_not be_valid
    end
  end
  it "has unique email" do
    user = User.new
    user.name = 'Test User'
    user.password = '12345678'
    user.password_confirmation = '12345678'
    user.email = 'laurfaery@gmail.com'

    expect(user).to be_valid
  end

end
