# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.new(email: "test@me.com", password: "azerty", admin: true)
# if user.save
#   puts "Vous avez créé un admin"
# else
#   puts "Vous n'avez pas pu créé ce user"
# end

puts "Creating facilities"
Facility.create(description: "Lit 2 places", category: "number")
Facility.create(description: "Terrasse aménagée", category: "boolean")
Facility.create(description: "Télévision", category: "boolean")
Facility.create(description: "Machine Nespresso", category: "boolean")
Facility.create(description: "Vaisselle", category: "boolean")
Facility.create(description: "Cuisine Equipée", category: "boolean")
Facility.create(description: "Congélateur", category: "boolean")
Facility.create(description: "Bureau", category: "number")
Facility.create(description: "Lave-vaisselle", category: "boolean")
Facility.create(description: "Lave-linge", category: "boolean")
Facility.create(description: "Console de jeu", category: "boolean")
Facility.create(description: "Sèche-linge", category: "boolean")
Facility.create(description: "Aspirateur", category: "boolean")
Facility.create(description: "Garage à vélos", category: "boolean")
Facility.create(description: "Ascenseur", category: "boolean")
Facility.create(description: "Four", category: "boolean")
Facility.create(description: "Place de parking", category: "number")
Facility.create(description: "Sèche-cheveux", category: "boolean")
Facility.create(description: "Home cinema", category: "boolean")
Facility.create(description: "Playstation 4", category: "boolean")
Facility.create(description: "Dressing", category: "boolean")
Facility.create(description: "Enceinte", category: "boolean")
Facility.create(description: "Vidéo-projecteur", category: "boolean")
Facility.create(description: "Baby-foot", category: "boolean")
Facility.create(description: "Fléchettes", category: "boolean")
Facility.create(description: "Arcade", category: "boolean")
Facility.create(description: "Ping-pong", category: "boolean")
Facility.create(description: "Four à micro-ondes", category: "boolean")
Facility.create(description: "Grille pain", category: "boolean")
Facility.create(description: "Appareil à croque-monsieur", category: "boolean")
Facility.create(description: "Bouilloire", category: "boolean")
Facility.create(description: "Fer à repasser", category: "boolean")
Facility.create(description: "Blender", category: "boolean")
