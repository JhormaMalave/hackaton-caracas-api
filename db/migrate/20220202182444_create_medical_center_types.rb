class CreateMedicalCenterTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_center_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
