class CreatePostDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :post_details do |t|
      t.string :PostText
      t.integer :PostID

      t.timestamps
    end
  end
end
