require 'json'
require 'activerecord-import/base'
puts "Seeding"

data_address = JSON.parse(File.read('./db/seed_data/adress_location.json'))
data_colors = JSON.parse(File.read('./db/seed_data/color_name.json'))

# Seed locations
locations = data_address.map do |location_data|
  Municipalitie.new(name: location_data["Name"], value: location_data["Value"])
end

Municipalitie.import locations

# Seed delegations
delegations = []
data_address.each_with_index do |location_data, index|
  location_data["Delegations"].each do |delegation_data|
    delegations << Delegation.new(name: delegation_data["Name"], value: delegation_data["Value"], municipalitie_id: locations[index].id)
  end
end

Delegation.import delegations

# Seed colors
colors = data_colors.map do |color_data|
  Color.new(color: color_data["color"], code: color_data["code"])
end

Color.import colors

puts "Seeding done"


