class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

   def appointment_times
    appointments.time
   end
end
