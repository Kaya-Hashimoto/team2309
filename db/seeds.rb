name = Faker::Artist.name,
email = Faker::Internet.email,
password = Faker::Alphanumeric.alpha(number: 8),
title = Faker::ProgrammingLanguage.name
contents = Faker::Quotes::Shakespeare.romeo_and_juliet_quote

5.times do
  user = User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password)
  Task.create!(title: title, contents: contents)
end

User.create!(name: 'Dpro2309', email: 'dpro@xx.mail',
            password: 'Dpro2309', password_confirmation: 'Dpro2309',
            title: title, contents: contents)