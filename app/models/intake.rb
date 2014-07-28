class Intake < ActiveRecord::Base
  belongs_to :course
  belongs_to :location

  def self.app_dev_course_intakes
  	where('course_id == ?', 1)
  end

  def self.future_intakes
    where('date >= ?', Date.today)
  end
end
