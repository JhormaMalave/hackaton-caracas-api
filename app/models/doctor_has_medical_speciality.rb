class DoctorHasMedicalSpeciality < ApplicationRecord
  belongs_to :doctor
  belongs_to :medical_speciality
end
