get '/' do
  @cohorts = Cohort.all
  erb :index
end

get '/cohorts/:id' do
  @cohort = Cohort.find(params[:id])
  erb :show
end

post '/cohorts/:id/coaches' do
  p params
  cohort = Cohort.find(params[:id])
  cohort.coaches.create(params[:coach])
  redirect "/cohorts/#{cohort.id}"
end
