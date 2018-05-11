require 'rails_helper'

describe 'navigate' do
  let(:comment_user) do
    create(:comment_user)
  end

  describe 'index' do
    before do
      visit comment_users_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit comment_user_path(comment_user)
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do
    it 'can be deleted' do
      comment_user_to_delete = create(:comment_user)

      visit comment_users_path(comment_user_to_delete)

      expect{comment_user_to_delete.destroy}.to change(CommentUser, :count).by(-1)
    end
  end
end