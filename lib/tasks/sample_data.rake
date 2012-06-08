namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin= User.create!(name: "Fernando",
                 lastname: "Romera Ferrio",
                 email: "fernandoromeraferrio@gmail.com",
                 password: "lights",
                 password_confirmation: "lights")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.first_name
      lastname = Faker::Name.last_name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   lastname: lastname,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end