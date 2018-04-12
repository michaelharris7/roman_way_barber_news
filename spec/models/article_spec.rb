require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "Creation" do
    before do
      @article = create(:article)
    end

    it 'can be created' do
      expect(@article).to be_valid
    end
  end
end