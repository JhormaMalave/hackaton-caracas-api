class MedicalItem < ApplicationRecord
    has_many :medical_item_has_types, dependent: :destroy
    has_many :medical_item_types, through: :medical_item_has_types
end
