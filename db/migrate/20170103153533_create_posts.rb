class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :PostTitle
      t.date :PostDate
      t.integer :Deleted
      t.integer :OwnerID

      t.timestamps
    end
  end
end
