class CreateFeaturedArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :featured_articles do |t|
      t.integer :article_id
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end