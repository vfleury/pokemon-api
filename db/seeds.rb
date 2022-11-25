# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

CSV.foreach(Rails.root.join('lib/seeds/pokemon.csv'), headers: true) do |row|
  Pokemon.create({
                   number: row["#"],
                   name: row["Name"],
                   type1: row["Type 1"],
                   type2: row["Type 2"],
                   total: row["Total"],
                   hp: row["HP"],
                   attack: row["Attack"],
                   defense: row["Defense"],
                   special_attack: row["Sp. Atk"],
                   special_defense: row["Sp. Def"],
                   speed: row["Speed"],
                   generation: row["Generation"],
                   legendary: row["Legendary"],
                 })
end
