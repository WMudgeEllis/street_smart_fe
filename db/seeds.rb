# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Place.destroy_all

Place.create!([
{ "name": "Cheyenne, Wyoming", "latitude": "41.1400","longitude": "-104.8202"},
{ "name": "North Pole, Alaska", "latitude": "64.7511", "longitude": "-147.3494"},
{ "name": "Charlotte, North Carolina", "latitude": "35.2271", "longitude": "-80.8431"}
])
