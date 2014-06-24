class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :tagline
      t.text :intro
      t.text :description
      t.string :image
      t.string :price
      t.string :icon
      t.string :slug

      t.timestamps
    end
  end
end
