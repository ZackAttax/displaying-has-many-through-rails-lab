class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient
    accepts_nested_attributes_for :patient, :doctor

    def doctor_name
        self.doctor.name
    end
end
