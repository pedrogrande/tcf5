class Enrolment < ActiveRecord::Base
  belongs_to :course
  belongs_to :intake
  belongs_to :payment
  belongs_to :special
end
