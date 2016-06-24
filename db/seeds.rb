User.create!([
  {email: "janfredrik@havie.net", encrypted_password: "$2a$10$aAZR5jon.H2KGhTAPr7h5.ZX3AF7YZxVHWCc7KjvwbcaOXrC3XGO6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2016-06-24 08:45:44", sign_in_count: 4, current_sign_in_at: "2016-06-24 08:45:44", last_sign_in_at: "2016-06-24 08:45:39", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
ItemClass.create!([
  {item_class_code: "GJT", item_class_name: "Gjentakende tjeneste"},
  {item_class_code: "FOR", item_class_name: "Forsikring"},
  {item_class_code: "KAP", item_class_name: "Kapitalvarer begrenset levetid"},
  {item_class_code: "VER", item_class_name: "Verdigjenstander"},
  {item_class_code: "MAT", item_class_name: "Matvarer"}
])
ItemType.create!([
  {item_type_code: "KJT", item_type_name: "Kjøtt"},
  {item_type_code: "FSK", item_type_name: "Fisk og sjømat"},
  {item_type_code: "VIN", item_type_name: "Vin"},
  {item_type_code: "GRS", item_type_name: "Grønnsaker"},
  {item_type_code: "FAB", item_type_name: "Abonnement fysisk tjeneste"}
])
LocationClass.create!([
  {location_class_code: "FYS", location_class_name: "Fysisk sted", physical_location: true},
  {location_class_code: "PER", location_class_name: "Person", physical_location: true},
  {location_class_code: "HLS", location_class_name: "Handleliste", physical_location: false},
  {location_class_code: "FBR", location_class_name: "Forbruk", physical_location: false}
])
