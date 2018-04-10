require 'rails_helper'

describe 'navigate' do
  describe 'news post json' do
    it 'can be reached successfully' do
      visit news_posts_url
      expect(page.status_code).to eq(200)
    end
  end
end