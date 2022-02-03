class MedicalCenter < ApplicationRecord
    belongs_to :medical_center_type

    scope :filter_by_medical_center_type, -> (id) { where(medical_center_type_id: id) }
end
