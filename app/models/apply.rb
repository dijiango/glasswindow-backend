class Apply <ActiveRecord::Base
    # Macros will go here
    # Has many Apply's
    belongs_to :user
    belongs_to :job
    

    
end