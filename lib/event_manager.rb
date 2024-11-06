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

lines = File.readlines('event_attendees.csv')
lines.each_with_index do |line,index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end

lines = File.readlines('event_attendees.csv')
  lines.each do |line|
  next if line == ",RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
  columns = line.split(",")
  name = columns[2]
  puts name
end

lines = File.readlines('event_attendees.csv')
lines.each_with_index |line, index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name 
end

require 'csv'
puts 'EventManager intialized.'

contents = CSV.open('event_attendees.csv', headers: true)
contents.each do |row|
  name = row[2]
  puts name 
end

contents = CSV.open(
  'event_attendees.csv', 
  headers: true
  headers_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  puts name 
end

contents = CSV.open(
  'event_attendees.csv',
 headers: true 
 headers_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  # if the zip code is exactly five digits, assume that it is ok
  # if the zip code is more than five digits, truncate it to the first five digits
  # if the zip code is less than five digits, add zeros to the front until it becomes five digits
# This is a pseudocode showing what the code is meant to do before the actual implementation 
  puts "#{name} #{zipcode}"
end 

contents = CSV.open('event_attendees.csv',
  headers: true 
  headers_converters: : symbol
)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  if zipcode.length < 5
    zipcode = zipcode.rjust(5, '0')
  elsif zipcode > 5
    zipcode = zipcode[0..4]
  end

  puts "#{name} #{zipcode}"
end