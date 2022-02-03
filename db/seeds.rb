# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



while MedicalCenterType.all.count < 4
    MedicalCenterType.create!(name: Faker::Lorem.word)
end

while MedicalCenter.all.count < 15
    medical_center_type = MedicalCenterType.all.sample

    MedicalCenter.create!(
        name: Faker::Lorem.sentence,
        direction: (Faker::Address.city + Faker::Address.street_address),
        description: Faker::Lorem.paragraphs,
        medical_center_type: medical_center_type
    )
end

while Doctor.all.count < 20
    Doctor.create!(
        name: Faker::Name.name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        description: Faker::Lorem.paragraphs,
        contact_number: Faker::PhoneNumber.cell_phone_in_e164
    )
end


medical_item_types = [
    "Medicina",
    "Insumos medicos",
]

medical_item_types.each do |item|
    MedicalItemType.find_or_create_by(name: item)
end


# Faker::Company.profession