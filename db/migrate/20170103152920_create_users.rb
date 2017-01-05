class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :UserName
      t.string :UserEmail
      t.date :CreateDate
      t.integer :Active

      t.timestamps
    end
  end
end
