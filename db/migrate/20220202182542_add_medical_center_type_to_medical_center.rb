class AddMedicalCenterTypeToMedicalCenter < ActiveRecord::Migration[7.0]
  def change
    add_reference :medical_centers, :medical_center_type, null: false, foreign_key: true, default: 1
  end
end
