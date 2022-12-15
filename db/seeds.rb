# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#@moderador = User.create(username: 'moderador', email: 'moderador@rails.com', password: '123456', password_confirmation: '123456', birthdate:01-01-1000)
user = User.new
user.username = 'moderador'
user.birthdate = '01-01-1000'
user.email = 'moderador@rails.com'
user.password = '123456'
user.password_confirmation = '123456'
user.save!

user = User.new
user.username = 'admin'
user.birthdate = '01-01-1000'
user.email = 'admin@rails.com'
user.password = '123456'
user.password_confirmation = '123456'

AdminUser.create!(email: 'admin@rails.com', password: '123456', password_confirmation: '123456')
