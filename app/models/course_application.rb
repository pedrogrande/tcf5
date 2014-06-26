class CourseApplication < ActiveRecord::Base
  belongs_to :course
  belongs_to :intake
  validates_associated :intake
  validates :first_name, 
  					:last_name,
  					:email,
  					:phone,
  					:city, 
  					:country, 
  					:age, 
  					:experience,
  					:reason, 
  					presence: true
end
