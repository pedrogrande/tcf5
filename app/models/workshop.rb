class Workshop < ActiveRecord::Base
  belongs_to :skill_group
  belongs_to :skill_level
end
