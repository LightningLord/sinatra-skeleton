class Cohort < ActiveRecord::Base
  # Remember to create a migration!
  has_many :coaches
end
