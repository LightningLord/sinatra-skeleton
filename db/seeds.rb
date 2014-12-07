50.times do
  Coach.create(:name => Faker::Name.name, :cohort_id => (rand(10) + 1))
end
