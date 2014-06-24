class CreateCourseWorkshops < ActiveRecord::Migration
  def change
    create_table :course_workshops do |t|
      t.references :course, index: true
      t.references :workshop, index: true

      t.timestamps
    end
  end
end
