class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/jobs" do
    Job.all.to_json
  end

  get "/jobs/:id" do
    job = Job.find(params[:id])

    job.to_json(include: :users)
  end
  

  get "/companies" do
    Company.all.to_json
  
  end

  get '/users' do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    
    # should include associated jobs in the Json response
    user.to_json(include: {applies: {include: :jobs}})
  end

  get '/applies' do
    Apply.all.to_json
  end

  get '/resumes' do
    
    Resume.all.to_json
  
  end

  get '/coverletters' do
    CoverLetter.all.to_json
  end



  

end




















# post '/applies' do
#   apply = Apply.create(
#      user_id: params[:user_id],
#      job_id: params[:job_id]
#   ) 
#      apply.to_json
#      puts "does this  work?"
# end

# post '/users' do
#   push = 
#   put "does this  work?"
# end

# post '/' do
#   push = 
#   put "does this  work?"
# end