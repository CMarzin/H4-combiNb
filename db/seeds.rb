# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'ash', email: 'hadrien.lepoutre@gmail.com', password: 'qwerty')
User.create(username: 'hash', email: 'lepoutre.hadrien@gmail.com', password: 'qwerty')

Combi.create(marque: 'Ford', year: '1964', kilometers: 123456, fueltype: "Super 95", owner: 1)
Combi.create(marque: 'Peugeot', year: '2016', kilometers: 765, fueltype: "Diesel", owner: 2)

Annonce.create(title: 'Annonce 1', description: 'Lorem ipsum lorem', location: 'Paris', startTime:'2017-12-17', endTime:'2017-12-31', creator_id: 1)
Annonce.create(title: 'Annonce 2', description: 'Ipsum lorem Ipsum', location: 'Amsterdam', startTime:'2017-12-20', endTime:'2018-01-15', creator_id: 2)
