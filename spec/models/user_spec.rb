require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = create(:user)
    @admin_user = create(:admin_user)
  end

  describe "create users " do
    it "can create standard user" do
      expect(@user).to be_valid
    end

    it "can create admin user" do
      expect(@admin_user).to be_valid
    end
  end
end