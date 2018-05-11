require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "Creation" do
    before do
      @comment_user_data = create(:comment_user)
      @article_data = create(:article)
      @comment = create(:comment, comment_user:@comment_user_data, article:@article_data)
    end

    it 'can be created' do
      expect(@comment).to be_valid
    end
  end
end