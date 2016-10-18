# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Pokemon
wild_pokemon = ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon",
    "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod",
    "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto",
    "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Ekans", "Arbok",
    "Pikachu", "Raichu", "Sandshrew", "Sandslash", "Nidoran (F)", "Nidorina",
    "Nidoqueen", "Nidoran (M)", "Nidorino", "Nidoking", "Clefairy", "Clefable",
    "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat",
    "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth",
    "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey",
    "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath",
    "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout",
    "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude",
    "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro",
    "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio", "Seel", "Dewgong",
    "Grimer", "Muk", "Shellder", "Cloyster", "Gastly", "Haunter", "Gengar",
    "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode",
    "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan",
    "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey",
    "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu",
    "Starmie", "Mr. Mime", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir",
    "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon",
    "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", "Kabuto", "Kabutops",
    "Aerodactyl", "Snorlax", "Dratini", "Dragonair", "Dragonite", "Chikorita",
    "Bayleef", "Meganium", "Cyndaquil", "Quilava", "Typhlosion", "Totodile",
    "Croconaw", "Feraligatr", "Sentret", "Furret", "Hoothoot", "Noctowl",
    "Ledyba", "Ledian", "Spinarak", "Ariados", "Crobat", "Chinchou", "Lanturn",
    "Pichu", "Cleffa", "Igglybuff", "Togepi", "Togetic", "Natu", "Xatu",
    "Mareep", "Flaaffy", "Ampharos", "Bellossom", "Marill", "Azumarill",
    "Sudowoodo", "Politoed", "Hoppip", "Skiploom", "Jumpluff", "Aipom",
    "Sunkern", "Sunflora", "Yanma", "Wooper", "Quagsire", "Espeon", "Umbreon",
    "Murkrow", "Slowking", "Misdreavus", "Unown", "Wobbuffet", "Girafarig",
    "Pineco", "Forretress", "Dunsparce", "Gligar", "Steelix", "Snubbull",
    "Granbull", "Qwilfish", "Scizor", "Shuckle", "Heracross", "Sneasel",
    "Teddiursa", "Ursaring", "Slugma", "Magcargo", "Swinub", "Piloswine",
    "Corsola", "Remoraid", "Octillery", "Delibird", "Mantine", "Skarmory",
    "Houndour", "Houndoom", "Kingdra", "Phanpy", "Donphan", "Porygon2",
    "Stantler", "Smeargle", "Tyrogue", "Hitmontop", "Smoochum", "Elekid",
    "Magby", "Miltank", "Blissey", "Larvitar", "Pupitar", "Tyranitar"]

wild_pokemon.each do |name|
  Pokemon.create name: name, level: rand(1..20), health: 100, experience: 0
end

# Make other trainers
%w(Ash Gary Misty Brock).each do |name|
  Trainer.create name: name, email: name+"@pokeportal.com", password: 'password'
end

# Make other trainers bosses
["Ash's Pikachu", "Ash's Charizard", "Ash's Pidgeot", "Ash's Bulbasaur", "Ash's Squirtle", "Ash's Butterfree"].each do |name|
  Pokemon.create name: name, trainer_id: 1, level: 40, health: 800, experience: 0
end

["Gary's Blastoise", "Gary's Umbreon", "Gary's Electivire"].each do |name|
  Pokemon.create name: name, trainer_id: 2, level: 40, health: 800, experience: 0
end

["Misty's Starmie", "Misty's Psyduck", "Misty's Gyarados", "Misty's Togetic", "Misty's Politoed"].each do |name|
  Pokemon.create name: name, trainer_id: 3, level: 40, health: 800, experience: 0
end

["Brock's Steelix", "Brock's Geodude", "Brock's Crobat", "Brock's Sudowoodo"].each do |name|
  Pokemon.create name: name, trainer_id: 4, level: 40, health: 800, experience: 0
end
Pokemon.create name: "Brock's Chansey", trainer_id: 4, level: 40, health: 9000, experience: 0
