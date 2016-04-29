# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses= Course.create ([{name: "Arduino basico"},{intensity:"10 horas"},{description:"Conceptos basico de programacion en arduino"}])
courses= Course.create ([{name: "Energias Renovables"},{intensity:"10 horas"},{description:"Conceptos basico de programacion en energias renovables"}])


units=Unit.create ([{name:  "Unidad 1 ¿Que harias si los robots fueran inteligentes"}, {description:"Conceptos basicos de programacion y contextualizacion sobre robotica"}, course_id: "1"])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')