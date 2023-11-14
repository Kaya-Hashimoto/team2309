5.time do
  name = Faker::Artist.name,
  email = Faker::Internet.email,
  password = Faker::Alphanumeric.alpha(number: 8),

  user = User.create!(

  )
end