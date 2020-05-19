users = [
  {name: 'Chris', password: '12345'}, {name:'Joe', password:'joeblow'}, {name:'Sam', password: 'password'}, {name: 'Steve', password: 'password1'}
]


 
puts 'Welcome to the authenticator program please sign in :'

25.times{ print "-"}
puts

attempts = 1

while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  users.each do |user| 
    if user[:name] == username && user[:password] == password
      puts user
      break
    else 
      puts "Credentials were not correct"
  end
end

  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == 'n'
  attempts += 1
end
