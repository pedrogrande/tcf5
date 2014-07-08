class CourseApplication < ActiveRecord::Base
  belongs_to :course
  belongs_to :intake
  belongs_to :referrer
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
            :intake_id,
  					presence: true

  
end
