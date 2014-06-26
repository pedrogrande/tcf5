class CreateCourseApplications < ActiveRecord::Migration
  def change
    create_table :course_applications do |t|
      t.references :course, index: true
      t.references :intake, index: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :reason
      t.text :experience
      t.string :education
      t.string :age
      t.string :city
      t.string :country
      t.boolean :employed
      t.string :referral

      t.timestamps
    end
  end
end
