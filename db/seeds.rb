require 'json'
require 'activerecord-import/base'

puts "Seeding"

data_address = JSON.parse(File.read('./db/seed_data/data_location.json'))
data_colors = JSON.parse(File.read('./db/seed_data/color_name.json'))

# Seed locations
locations = {}
data_address.each do |location_data|
  name = location_data["Name"]
  unless locations[name]
    locations[name] = Municipalitie.new(name: name)
  end
end

# Output the names of municipalities being created
puts "Municipalities being created:"
puts locations.keys

# Import unique Municipalities
Municipalitie.import locations.values

# Seed delegations and addresses
data_address.each do |location_data|
  location_name = location_data["Name"]
  location = locations[location_name]

  location_data["Delegations"].each do |delegation_name, delegation_data|
    delegation = Delegation.new(name: delegation_name, municipalitie_id: location.id)
    delegation.save!

    delegation_data["Cities"].each do |city_data|
      Address.create!(
        street: city_data["street"],
        code_postal: city_data["code_postal"],
        delegation_id: delegation.id
      )
    end
  end
end

# Seed colors
colors = data_colors.map do |color_data|
  Color.new(color: color_data["color"], code: color_data["code"])
end

Color.import colors

puts "Seeding done"