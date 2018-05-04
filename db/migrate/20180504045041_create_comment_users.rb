class CreateCommentUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_users do |t|
      t.integer :user_id
      t.string :user_type
      t.string :user_name

      t.timestamps
    end
  end
end
