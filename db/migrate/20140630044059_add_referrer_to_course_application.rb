class AddReferrerToCourseApplication < ActiveRecord::Migration
  def change
    add_reference :course_applications, :referrer, index: true
  end
end
