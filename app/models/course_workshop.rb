class CourseWorkshop < ActiveRecord::Base
  belongs_to :course
  belongs_to :workshop
end
