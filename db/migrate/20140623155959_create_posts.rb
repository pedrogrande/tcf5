class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :lead
      t.text :content
      t.string :image
      t.references :user, index: true
      t.references :category, index: true
      t.string :slug
      t.boolean :publish
      t.date :published_date
      t.integer :impressions_count

      t.timestamps
    end
  end
end
