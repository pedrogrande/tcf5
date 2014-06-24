class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :tagline
      t.text :description
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :location, index: true
      t.string :icon
      t.string :link
      t.string :slug
      t.string :price

      t.timestamps
    end
  end
end
