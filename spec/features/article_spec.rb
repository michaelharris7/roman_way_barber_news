require 'rails_helper'

describe 'navigate' do
  describe 'news article json' do
    it 'can be reached successfully' do
      visit articles_url
      expect(page.status_code).to eq(200)
    end
  end
end