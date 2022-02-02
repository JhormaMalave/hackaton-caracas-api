class CreateMedicalItemHasTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_item_has_types do |t|
      t.belongs_to :medical_item, null: false, foreign_key: true
      t.belongs_to :medical_item_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
