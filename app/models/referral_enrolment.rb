class ReferralEnrolment < ActiveRecord::Base
  belongs_to :referrer
  belongs_to :enrolment
end
