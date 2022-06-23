class Service < ActiveRecord::Base
    has_many :appointments
    has_many :salons, through: :appointments 
end