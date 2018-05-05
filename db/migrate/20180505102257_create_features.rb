class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.integer :article_id
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
