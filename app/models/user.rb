class User <ActiveRecord::Base
    # Macros will go here
    # Has many Apply's
    has_many :applies
    has_many :cover_letters
    has_many :resumes
    
    has_many :jobs, through: :applies 
    
    
end