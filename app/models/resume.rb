class Resume <ActiveRecord::Base
    # Macros will go here
    # Has many Apply's
    belongs_to :user
end