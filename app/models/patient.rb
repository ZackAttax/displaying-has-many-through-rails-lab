class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def patient_name
        name
    end

    def appointments_count
        appointments.count
    end
end
