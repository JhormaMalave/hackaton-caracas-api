class CreateMedicalSpecialities < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_specialities do |t|
      t.string :name

      t.timestamps
    end
  end
end
