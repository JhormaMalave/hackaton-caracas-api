class CreateMedicalItems < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_items do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.string :direction
      t.float :price

      t.timestamps
    end
  end
end
