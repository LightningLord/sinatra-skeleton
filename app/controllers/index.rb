get '/' do
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  erb :new_coach
end

post '/coaches' do
  p params
  Coach.create(params[:coach])
  redirect '/'
end

get '/cohorts/:id' do
  @cohort = Cohort.find(params[:id])
  erb :cohort_show
end

