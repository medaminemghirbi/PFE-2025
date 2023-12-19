require 'json'
require 'activerecord-import/base'
data = JSON.parse(File.read('./seed_data/test.json'))
result = {}
data.each do |entry|
  gov_name = entry["Gov"]
  deleg_name = entry["Deleg"]
  cite_name = entry["Cite"]
  zip_value = entry["zip"]

  result[gov_name] ||= {"Name" => gov_name&.upcase  || '', "Delegations" => {}}
  result[gov_name]["Delegations"][deleg_name] ||= {"Name" => deleg_name || '', "Cities" => []}
  result[gov_name]["Delegations"][deleg_name]["Cities"] << {"street" => cite_name || '', "code_postal" => zip_value || ''}
end

transformed_data = result.values

# Writing the transformed data to an output file
output_file = 'transformed_data_output.json'
File.write(output_file, JSON.pretty_generate(transformed_data))

puts "Transformation complete. The result is saved in #{output_file}"