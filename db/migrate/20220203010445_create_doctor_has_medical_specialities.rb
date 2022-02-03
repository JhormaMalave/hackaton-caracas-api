class CreateDoctorHasMedicalSpecialities < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_has_medical_specialities do |t|
      t.belongs_to :doctor, null: false, foreign_key: true
      t.belongs_to :medical_speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
