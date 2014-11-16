
Cohort.all.each do |cohort|
  10.times{cohort.coaches.create(:name => Faker::Name.first_name)}
end
