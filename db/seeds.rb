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

puts "Destroying all facilities"
Facility.destroy_all

puts "Creating facilities"
Facility.create(description: "Lits 2 places")
Facility.create(description: "Terrasse aménagée")
Facility.create(description: "Télévision")
Facility.create(description: "Machine Nespresso")
Facility.create(description: "Vaisselle")
Facility.create(description: "Cuisine Equipée")
Facility.create(description: "Congélateur")
Facility.create(description: "Bureau")
Facility.create(description: "Lave-vaisselle")
Facility.create(description: "Lave-linge")
Facility.create(description: "Console de jeu")
Facility.create(description: "Sèche-linge")
Facility.create(description: "Aspirateur")
Facility.create(description: "Garage à vélos")
Facility.create(description: "Ascenseur")
Facility.create(description: "Four")
Facility.create(description: "Place de parking")
Facility.create(description: "Sèche-cheveux")
Facility.create(description: "Home cinema")
Facility.create(description: "Playstation 4")
Facility.create(description: "Dressing")
Facility.create(description: "Enceinte")
Facility.create(description: "Vidéo-projecteur")
Facility.create(description: "Baby-foot")
Facility.create(description: "Fléchettes")
Facility.create(description: "Arcade")
Facility.create(description: "Ping-pong")
Facility.create(description: "Four à micro-ondes")
Facility.create(description: "Grille pain")
Facility.create(description: "Appareil à croque-monsieur")
Facility.create(description: "Bouilloire")
Facility.create(description: "Fer à repasser")
Facility.create(description: "Blender")
