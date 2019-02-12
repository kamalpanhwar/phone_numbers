# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

countries_to_insert = []
CSV.foreach('countries.csv', headers: true) do |row|
  countries_to_insert << row.to_hash
end

countries_to_insert.each do |r|
  Country.create(r)
end

cities_to_insert = []
CSV.foreach('cities.csv', headers: true) do |row|
  cities_to_insert << row.to_hash
end

cities_to_insert.each do |r|
  City.create(r)
end
