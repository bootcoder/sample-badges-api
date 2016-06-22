# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Teacher.create(name: "Hunter")
Teacher.create(name: "Derek")
Teacher.create(name: "Seba")
Teacher.create(name: "Shambhavi")
Teacher.create(name: "Ken")
Teacher.create(name: "Walker")
Teacher.create(name: "Julian")
Teacher.create(name: "Jaclyn")
Teacher.create(name: "Jen")
sherif = Teacher.create(name: "Sherif")


sherif.badges.create(phrase: "It's just Syntax people.")
sherif.badges.create(phrase: "STOP trying to make this shit harder than it really is!")
