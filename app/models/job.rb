class Job <ActiveRecord::Base
    # Macros will go here
    belongs_to :company
    has_many :applies

    has_many :users, through: :applies
    
    
end