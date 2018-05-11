require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "Creation" do
    before do
      @comment = create(:comment)
    end

    it 'can be created' do
      expect(@comment).to be_valid
    end
  end
end