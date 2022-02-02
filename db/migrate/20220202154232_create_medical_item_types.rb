class CreateMedicalItemTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_item_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
