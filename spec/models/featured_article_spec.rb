require 'rails_helper'

RSpec.describe FeaturedArticle, type: :model do
  describe "Creation" do
    before do
      @featured_article = create(:featured_article)
    end

    it 'can be created' do
      expect(@featured_article).to be_valid
    end
  end
end
