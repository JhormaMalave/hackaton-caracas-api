class MedicalSpeciality < ApplicationRecord
    has_many :doctor_has_medical_specialities, dependent: :destroy
    has_many :doctors, through: :doctor_has_medical_specialities
end
