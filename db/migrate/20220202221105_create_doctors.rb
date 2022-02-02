class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :contact_number
      t.string :description

      t.timestamps
    end
  end
end
