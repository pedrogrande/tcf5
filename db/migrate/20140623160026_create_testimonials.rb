class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.text :quote
      t.text :text
      t.string :image
      t.references :course, index: true
      t.boolean :featured

      t.timestamps
    end
  end
end
