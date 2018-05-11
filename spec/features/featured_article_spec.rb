require 'rails_helper'

describe 'navigate' do
  let(:featured_article) do
    create(:featured_article)
  end

  describe 'index' do
    before do
      visit featured_articles_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit featured_article_path(featured_article)
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do
    it 'can be deleted' do
      featured_article_to_delete = create(:featured_article)

      visit featured_articles_path(featured_article_to_delete)

      expect{featured_article_to_delete.destroy}.to change(FeaturedArticle, :count).by(-1)
    end
  end
end