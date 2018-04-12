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

  describe 'delete' do
    it 'can be deleted' do
      article_to_delete = create(:article)

      visit articles_path(article_to_delete)

      expect{article_to_delete.destroy}.to change(Article, :count).by(-1)
    end
  end

end






# describe 'DELETE #destroy' do

#   context "success" do

#     it "deletes the user" do
#       expect{
#         delete :destroy, :id => @user, :user => {:password => @user.password}
#      }.to change(User, :count).by(-1)
#     end

#   end

# end