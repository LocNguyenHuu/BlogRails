class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :Comment
      t.integer :CommenterID
      t.date :CommentDate
      t.integer :Deleted

      t.timestamps
    end
  end
end
