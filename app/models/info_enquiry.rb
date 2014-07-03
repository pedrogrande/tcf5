class InfoEnquiry < ActiveRecord::Base
  belongs_to :referrer
  validates :email, presence: true
end
