class MedicalItemType < ApplicationRecord
    has_many :medical_item_has_types, dependent: :destroy
    has_many :medical_items, through: :medical_items
end
