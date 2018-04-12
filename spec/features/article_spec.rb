require 'rails_helper'

describe 'navigate' do
  let(:article) do
    create(:article)
  end

  describe 'index' do
    before do
      visit articles_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit article_path(article)
      expect(page.status_code).to eq(200)
    end
  end

end