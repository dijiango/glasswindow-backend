require 'faker'

puts "🌱 Seeding..."


puts "CLearing our tables..."
# Clearing our tables


#-------------------------------------
#------------ Companies --------------
puts 'Creating companies...'

Company.destroy_all

company1 = Company.create(
    
    image_url: 'http://logok.org/wp-content/uploads/2014/06/Microsoft-logo-m-box.png',
    name: 'Microsoft',
    location:'Redmond, WA',
    rating: 4
     

)

company2 = Company.create(

    image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png',
    name: 'Apple',
    location:'Redmond, WA',
    rating: 4

)

company3 = Company.create(

    image_url: 'https://www.designbust.com/download/640/png/facebook_logo_transparent512.png',
    name: 'Facebook',
    location:'Menlo Park, CA',
    rating: 2

)

company4 = Company.create(

    image_url: 'https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515358_10512.png',
    name: 'Google',
    location:'Mountain U, CA',
    rating: 5

)

#--------------------------------
#-------- Jobs ------------------
puts 'Creating Jobs...'
Job.destroy_all

job1 = Job.create(
    image_url: 'http://logok.org/wp-content/uploads/2014/06/Microsoft-logo-m-box.png',
    title: 'Junior Software Engineer',
    location: 'Remote/NY',
    company: company1,
    salary: 80000,
    company_id: company1.id
    
)
job2 = Job.create(
     image_url: 'http://logok.org/wp-content/uploads/2014/06/Microsoft-logo-m-box.png',
     title: 'Level II Software Engineer',
     location: 'Remote/North Dakota',
     company: company1,
     salary: 120000,
     company_id: company1.id
     
   
    
)
job3 = Job.create(
     image_url: 'http://logok.org/wp-content/uploads/2014/06/Microsoft-logo-m-box.png',
     title: 'Senior Software Engineer',
     location: 'Remote/Chicago',
     company: company1,
     salary: 175000,
     company_id: company1.id
   
)

job4 = Job.create(
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png',
    title: 'Systems Software Engineer',
    location: 'Remote/WA',
    company: company2,
    salary: 2000000,
    company_id: company2.id

)

job5 = Job.create(
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png',
    title: 'Swift Programmer',
    location: 'Remote/CA',
    company: company2,
    salary: 1000000,
    company_id: company2.id

)

job6 = Job.create(
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png',
    title: 'AI/ML - iOS & macOS Software Engineer',
    location: 'Remote/PA',
    company: company2,
    salary: 175000,
    company_id: company2.id

)

job7 = Job.create(
    image_url: 'https://www.designbust.com/download/640/png/facebook_logo_transparent512.png',
    title: 'META Software Engineer',
    location: 'Remote/CA',
    company: company3,
    salary: 114000,
    company_id: company3.id

)

job8 = Job.create(
    image_url: 'https://www.designbust.com/download/640/png/facebook_logo_transparent512.png',
    title: 'Senior Evil Hack',
    location: 'Remote/FL',
    company: company3,
    salary: 500000,
    company_id: company3.id

)

job9 = Job.create(
    image_url: 'https://www.designbust.com/download/640/png/facebook_logo_transparent512.png',
    title: 'React Native Developer',
    location: 'Remote/CA',
    company: company3,
    salary: 130000,
    company_id: company3.id

)

job10 = Job.create(
    image_url: 'https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515358_10512.png',
    title: 'Staff Software Engineer, Pixel Graphics',
    location: 'Remote/WA',
    company: company4,
    salary: 137000,
    company_id: company4.id

)
job11 = Job.create(
    image_url: 'https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515358_10512.png',
    title: 'Junior Software Engineer',
    location: 'Remote/NY',
    company: company4,
    salary: 80000,
    company_id: company4.id

)
job12 = Job.create(
    image_url: 'https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515358_10512.png',
    title: 'Junior Software Engineer',
    location: 'Remote/NY',
    company: company4,
    salary: 80000,
    company_id: company4.id

)

#--------------------------------
#-------- Users -----------------

puts "Creating users..."

User.destroy_all

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
Resume.destroy_all

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
CoverLetter.destroy_all

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
Apply.destroy_all

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
