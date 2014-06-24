class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.references :course, index: true
      t.references :location, index: true
      t.string :day
      t.date :date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.integer :number_of_places
      t.integer :number_of_students_registered
      t.boolean :active

      t.timestamps
    end
  end
end
