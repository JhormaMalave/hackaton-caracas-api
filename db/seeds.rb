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