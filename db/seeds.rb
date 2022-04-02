# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
30.times do |n|

    fake_first_name  = Faker::Name.first_name
    fake_last_name = Faker::Name.last_name
    fake_email = "fmail-#{n+1}@mail.com"
    fake_password = "fake_password"
    user = User.create(first_name: fake_first_name, last_name: fake_last_name,
        email: fake_email , password: fake_password, password_confirmation: fake_password)

    Faker::Job.title != Faker::Job.title
    Profile.update(bio: "Hi, Welcome to my profile!", job: Faker::Job.title)
end