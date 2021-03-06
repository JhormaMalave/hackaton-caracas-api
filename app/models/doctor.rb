class Doctor < ApplicationRecord
    has_many :doctor_has_medical_specialities, dependent: :destroy
    has_many :medical_specialities, through: :doctor_has_medical_specialities

    scope :filter_by_medical_speciality, -> (id) { joins(:medical_specialities).where(medical_specialities: {id: id}).distinct }
    scope :filter_by_name, -> (name) { where("lower(name) LIKE ? OR lower(last_name) LIKE ?", "%#{name.downcase}%","%#{name.downcase}%") }
end