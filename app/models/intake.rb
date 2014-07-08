class Intake < ActiveRecord::Base
  belongs_to :course
  belongs_to :location

  def self.future_intakes
    where('date >= ?', Date.today)
  end
end
