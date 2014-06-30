class Referrer < ActiveRecord::Base
  belongs_to :user
  has_many :course_applications
end
