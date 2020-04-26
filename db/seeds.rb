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
  }
])

Performance.create!([
  {
    user: User.find_by_name('Cristina'),
    link: 'https://www.youtube.com/watch?v=c5LCYSR_YEA',
    title: 'Sissy That Walk'
  },
  {
    user: User.find_by_name('Sana'),
    link: 'https://www.youtube.com/watch?v=YJzT1KMjQ0k',
    title: 'Nimbooda Nimbooda'
  },
  {
    user: User.find_by_name('Rafa & Gordon'),
    link: 'https://www.youtube.com/watch?v=BQn1gJdVKi4&feature=youtu.be',
    title: 'Waterloo'
  },
  {
    user: User.find_by_name('James & Mike'),
    link: 'https://www.youtube.com/watch?v=62SrA5hCmkE&feature=youtu.be',
    title: 'Making your mind up'
  },
  {
    user: User.find_by_name('Ale & Mario'),
    link: 'https://www.youtube.com/watch?v=SaolVEJEjV4&feature=youtu.be',
    title: 'Rise Like a Phoenix'
  },
  {
    user: User.find_by_name('Suzan'),
    link: 'https://www.youtube.com/watch?v=Pfo-8z86x80&feature=youtu.be',
    title: 'Euphoria'
  },
  {
    user: User.find_by_name('Fede & Vale'),
    link: 'https://www.youtube.com/watch?v=9DPAb9-Stmo',
    title: 'Nel Blu Dipinto Di Blu'
  }
])

Performance.all.each do |performance|
  User.all.each do |user|
    performance.scores.create!({user: user})
  end
end
