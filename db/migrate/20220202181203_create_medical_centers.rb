class CreateMedicalCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_centers do |t|
      t.string :name
      t.string :direction
      t.string :description

      t.timestamps
    end
  end
end
