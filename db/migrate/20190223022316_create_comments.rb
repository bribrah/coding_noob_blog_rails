class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :body
      t.integer :post_id

      t.timestamps
    end
  end
end
