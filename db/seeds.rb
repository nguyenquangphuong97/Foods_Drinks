User.create!(name: "admin",
  email: "admin11@gmail.com",
  phone: "0905388197",
  address: "16 ly thuong kiet",
  password: "123456",
  password_confirmation: "123456",
  admin: true)

10.times do |n|
name = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
address = Faker::Address.street_address
phone = Faker::PhoneNumber.cell_phone
password = "password"
User.create!(name: name,
    email: email,
    phone: phone,
    address: address,
    password: password,
    password_confirmation: password)
end
