class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
    

    get "/jobs" do
      Job.all.to_json
    end

  #   get "/jobs/:id" do
  #     job = Job.find(params[:id])

  #     job.to_json(include: :users)
  #   end
    

  #   get "/companies" do
  #     Company.all.to_json
    
  #   end

  #   get '/users' do
  #     User.all.to_json
  #   end

  #   get '/users/:id' do
  #     user = User.find(params[:id])
      
  #     # should include associated jobs in the Json response
  #     user.to_json(include: :jobs)
  #   end

  #   get '/applies' do
  #     Apply.all.to_json
  #   end

  #   get '/resumes' do
      
  #     Resume.all.to_json
    
  #   end

  #   get '/coverletters' do
  #     CoverLetter.all.to_json
  #   end



  # # POST reqs

  post '/applies' do
    # binding.pry
    apply = Apply.create(
      user_id: params[:user_id],
      job_id: params[:job_id]
    ) 
      apply.to_json
      
  end

  post '/users' do
    user = User.create(
    name: params[:name],
    address: params[:address],
    email: params[:email],
    phone_number: params[:phone_number]
    ) 
  end

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end



  # Patch Requests 

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      
      name: params[:name],
      address: params[:address],
      email: params[:email],
      phone_number: params[:phone_number]

      #user_id #is this needed here?
    )
    user.to_json
  end

  
end