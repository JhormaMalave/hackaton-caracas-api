class Doctor < ApplicationRecord
    has_many :doctor_has_medical_specialities, dependent: :destroy
    has_many :medical_specialities, through: :doctor_has_medical_specialities
end
