class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient
    accepts_nested_attributes_for :patient, :doctor

    def doctor_name
        doctor.name
    end

    def patient_name
        patient.name
    end

    def time
        appointment_datetime.strftime("%k:%M %B %d, %Y")
    end

    def dr_time
      appointment_datetime.strftime("%B %d, %Y at %k:%M")
     end
end
