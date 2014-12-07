


get '/' do
  @cohorts = Cohort.all
  erb :index
end

get '/cohorts/:id' do
  @cohort = Cohort.find(params[:id])
  erb :show
end

delete '/coaches/:id' do
  coach = Coach.find(params[:id])
  coach.destroy
  redirect "/cohorts/#{coach.cohort_id}"
end

get '/cohorts/:id/edit' do
  @cohort = Cohort.find(params[:id])
  erb :edit
end

put '/cohorts/:id' do
  cohort = Cohort.find(params[:id])
  p params
  # cohort.update_attributes(:name => params[:cohort][:name], :city => params[:cohort][:city])
  cohort.update_attributes(params[:cohort])
  redirect "/cohorts/#{cohort.id}"
end

