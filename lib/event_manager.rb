puts 'Event Manager Initialized!'
contents = File.read('event_attendees.csv')
puts contents

lines = File.readlines('event_attendees.csv')
lines.each do |line|
  puts line
end

lines = File.readlines('event_attendees.csv')
lines.each do |line|
  puts line
end

lines = File.readlines('event_attendees.csv')
lines.each do |line|
  columns = line.split(",")
  name = columns[2]
  puts name
end

lines = File.readlines('event_attendees.csv')
lines.each do |line|
  next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
  columns = line.split(",")
  name = columns[2]
  puts name
end

lines = File.readlines('event_attendees.csv')
row_index = 0
lines.each do |line|
  row_index = row_index + 1
  next if row_index == 1
  columns = line.split(",")
  name = columns[2]
  puts name
end