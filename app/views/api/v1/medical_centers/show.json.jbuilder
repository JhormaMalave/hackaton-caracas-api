json.id @medical_center.id
json.name @medical_center.name
json.description @medical_center.description
json.direction @medical_center.direction
json.type do 
    json.name @medical_center.medical_center_type.name
end