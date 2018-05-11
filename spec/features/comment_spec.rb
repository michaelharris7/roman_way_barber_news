require 'rails_helper'

describe 'navigate' do
  let(:comment) do
    create(:comment)
  end

  describe 'index' do
    before do
      visit comments_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit comment_path(comment)
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do
    it 'can be deleted' do
      comment_to_delete = create(:comment)

      visit comments_path(comment_to_delete)

      expect{comment_to_delete.destroy}.to change(Comment, :count).by(-1)
    end
  end
end