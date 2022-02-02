class MedicalItemHasType < ApplicationRecord
  belongs_to :medical_item
  belongs_to :medical_item_type
end
