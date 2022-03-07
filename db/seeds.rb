require 'faker'

puts "🌱 Seeding..."


puts "Clearing our tables..."
Company.destroy_all
Job.destroy_all
Resume.destroy_all
User.destroy_all
Apply.destroy_all
CoverLetter.destroy_all


puts 'Creating companies...'
#--------------------------------
#-------- Companies ------------------

company1 = Company.create(
    image_url: Faker::Company.logo,
    name: Faker::Company.name,
    industry: Faker::Job.field,
    rating: 4
)

company2 = Company.create(
    image_url: Faker::Company.logo,
    name: Faker::Company.name,
    industry: Faker::Job.field,
    rating: 4
)

company3 = Company.create(
    image_url: Faker::Company.logo,
    name: Faker::Company.name,
    industry: Faker::Job.field,
    rating: 2

)

company4 = Company.create(
    image_url: Faker::Company.logo,
    name: Faker::Company.name,
    industry: Faker::Job.field,
    rating: 5
)

#--------------------------------
#-------- Jobs ------------------
puts 'Creating Jobs...'

job1 = Job.create(
    title: 'Junior Software Engineer',
    location: Faker::Address.state,
    salary: 80000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company1.id
    
)
job2 = Job.create(
    title: 'Level II Software Engineer',
    location: Faker::Address.state,
    salary: 120000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company1.id
     
   
    
)
job3 = Job.create(
    title: 'Software Engineer Intern',
    location: Faker::Address.state,
    salary: 175000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company1.id
   
)

job4 = Job.create(
    title: 'Systems Software Engineer',
    location: Faker::Address.state,
    salary: 2000000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company2.id

)

job5 = Job.create(
    title: 'Swift Programmer',
    location: Faker::Address.state,
    salary: 1000000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company2.id

)

job6 = Job.create(
    title: 'AI/ML - iOS & macOS Software Engineer',
    location: Faker::Address.state,
    salary: 175000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company2.id
)

job7 = Job.create(
    title: 'Full-Stack Software Engineer',
    location: Faker::Address.state,
    salary: 114000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company3.id

)

job8 = Job.create(
    title: 'Senior Evil Hack',
    location: Faker::Address.state,
    salary: 500000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company3.id

)

job9 = Job.create(
    title: 'React Native Developer',
    location: Faker::Address.state,
    salary: 130000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company3.id

)

job10 = Job.create(
    title: 'Staff Software Engineer, Pixel Graphics',
    location: Faker::Address.state,
    salary: 137000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company4.id

)
job11 = Job.create(
    title: 'Junior Software Engineer',
    location: Faker::Address.state,
    salary: 80000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company4.id

)
job12 = Job.create(
    title: 'Junior Software Engineer',
    location: Faker::Address.state,
    salary: 80000,
    employment_type: Faker::Job.employment_type,
    education: Faker::Job.education_level,
    company_id: company4.id

)

#--------------------------------
#-------- Users -----------------

puts "Creating users..."



user1 = User.create(
    name: "Adam Bee", 
    address: "Illinois",
    email: "a.bee@gmail.com",
    phone_number: "630-937-8639"

)

user2 = User.create(
    name: "Diana Jay", 
    address: "Florida",
    email: "dj.supreme@gmail.com",
    phone_number: "407-414-0972"

)

user3 = User.create(
    name: "Matt Hugh", 
    address: "New York",
    email: "matthew.Y@gmail.com",
    phone_number: "646-213-1876"

)

user4 = User.create(
    name: "Steve Wonder", 
    address: "Pensylvania",
    email: "steviepianoman@gmail.com",
    phone_number: "718-590-5555"

)

#--------------------------------
#-------- Resumes ---------------

puts'Creating Resumes...'


resume1 = Resume.create(  

    name: "Adam Bee", 
    address: "Illinois",
    email: "a.bee@gmail.com",
    phone_number: "630-937-8639",
    user_id: user1.id
    
)

resume2 = Resume.create(  

    name: "Steve Wonder", 
    address: "Pensylvania",
    email: "steviepianoman@gmail.com",
    phone_number: "718-590-5555",
    user_id: user4.id
    
)

resume3 = Resume.create(  

    name: "Diana Jay", 
    address: "Florida",
    email: "dj.supreme@gmail.com",
    phone_number: "407-414-0972",
    user_id: user2.id
    
)

resume4 = Resume.create(  

    name: "Matt Hugh", 
    address: "New York",
    email: "matthew.Y@gmail.com",
    phone_number: "646-213-1876",
    user_id: user3.id
    
)

resume5 = Resume.create(  

    name: "Diana Jay", 
    address: "Florida",
    email: "dj.supreme@gmail.com",
    phone_number: "407-414-0972",
    user_id: user2.id
    
)

resume6 = Resume.create(  

    name: "Steve Wonder", 
    address: "Pensylvania",
    email: "steviepianoman@gmail.com",
    phone_number: "718-590-5555",
    user_id: user4.id
    
)

resume7 = Resume.create(  

    name: "Matt Hugh", 
    address: "New York",
    email: "matthew.Y@gmail.com",
    phone_number: "646-213-1876",
    user_id: user3.id
    
)

resume8 = Resume.create(  

    name: "Adam Bee", 
    address: "Illinois",
    email: "a.bee@gmail.com",
    phone_number: "630-937-8639",
    user_id: user1.id
    
)

#--------------------------------
#-------- Cover Letters ---------

puts'Creating Cover Letters...'


coverLetter1 = CoverLetter.create(

    name: "Adam Bee",
    company: "Google",
    user_id: user1.id

)

coverLetter2 = CoverLetter.create(

    name: "Steve Wonder",
    company: "Google",
    user_id: user4.id
)

coverLetter3 = CoverLetter.create(

    name: "Diana Jay", 
    company: "Apple",
    user_id: user2.id
)

coverLetter4 = CoverLetter.create(

    name: "Matt Hugh",
    company: "Microsoft",
    user_id: user3.id
)

coverLetter5 = CoverLetter.create(

    name: "Diana Jay", 
    company: "Facebook",
    user_id: user2.id
)

coverLetter6 = CoverLetter.create(

    name: "Steve Wonder",
    company: "Apple",
    user_id: user4.id

)

coverLetter7 = CoverLetter.create(

    name: "Matt Hugh",
    company: "Facebook",
    user_id: user3.id
)

coverLetter8 = CoverLetter.create(

    name: "Adam Bee",
    company: "Microsoft",
    user_id: user1.id

)
# --------------------------------
#-------- Apply ----------------- Will come back to this in a moment - MSU

puts 'Creating Applies...'


apply1 = Apply.create(
    user_id: user1.id,
    job_id: job1.id
)
apply2 = Apply.create(
    user_id: user2.id,
    job_id: job2.id
)
apply3 = Apply.create(
    user_id: user3.id,
    job_id: job3.id
)
apply4 = Apply.create(
    user_id: user4.id,
    job_id: job3.id
)

# Seed your database here


# User seeds

puts "✅ Done seeding!"
