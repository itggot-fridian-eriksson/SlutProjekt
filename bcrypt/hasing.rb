require 'bcrypt'

cleartext = 'grillkorv'

hash = BCrypt::Password.create(cleartext)

puts "cleartext #{cleartext}"
puts "hash: #{hash}"

puts "salt: #{hash.salt}"

puts hash == cleartext