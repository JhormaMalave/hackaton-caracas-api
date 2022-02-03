json.array! @doctors do |doctor|
    json.id doctor.id
    json.name doctor.name
    json.last_name doctor.last_name
    json.contact_number doctor.contact_number
    json.description doctor.description
    json.email doctor.email

    json.medical_specialities doctor.medical_specialities do |medical_speciality|
        json.id medical_speciality.id
        json.name medical_speciality.name
    end
end