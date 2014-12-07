class Coach < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :cohort
end
