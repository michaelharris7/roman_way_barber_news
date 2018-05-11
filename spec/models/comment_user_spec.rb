require 'rails_helper'

RSpec.describe CommentUser, type: :model do
  describe "Creation" do
    before do
      @comment_user = create(:comment_user)
    end

    it 'can be created' do
      expect(@comment_user).to be_valid
    end
  end
end