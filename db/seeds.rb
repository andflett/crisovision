# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+1@gmail.com',
    name: 'Cristina',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+2@gmail.com',
    name: 'Sana',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+3@gmail.com',
    name: 'Pedro',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+4@gmail.com',
    name: 'Suzan',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+5@gmail.com',
    name: 'James & Mike',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+6@gmail.com',
    name: 'Fede & Vale',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+7@gmail.com',
    name: 'Ale & Mario',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+8@gmail.com',
    name: 'Rafa & Gordon',
    admin: false
  },
  {
    password: 'defaultpassword',
    password_confirmation: 'defaultpassword',
    email: 'andrflett+9@gmail.com',
    name: 'Gary',
    admin: false
  },
])
