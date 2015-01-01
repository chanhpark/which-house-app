# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

file = File.read('db/data/zillow_info.csv')
csv = CSV.parse(file, :headers => true)

csv.each do |row|
  address = row[:address]
  city = row[:city]
  state = row[:state]
  zipcode = row[:zipcode]
  size = row[:size]
  price = row[:price]
  puts "We created a house with address of #{h}"
  House.create!(address: address,
                city: city,
                state: state,
                zipcode: zipcode,
                size: size,
                price: price)
  end
