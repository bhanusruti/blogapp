class CreateCategorizedPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :categorized_posts do |t|
      t.string :post_id
      t.string :categorized_id

      t.timestamps
    end
  end
end
