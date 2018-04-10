class CreateNewsPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :news_posts do |t|
      t.string :title
      t.string :content
      t.string :ref_source_url

      t.timestamps
    end
  end
end
