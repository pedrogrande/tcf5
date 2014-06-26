class CourseApplication < ActiveRecord::Base
  belongs_to :course
  belongs_to :intake
end
