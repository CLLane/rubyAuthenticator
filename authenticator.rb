users = [
  {name: 'Chris', password: '12345'}, {name:'Joe', password:'joeblow'}, {name:'Sam', password: 'password'}, {name: 'Steve', password: 'password1'}
]


 
puts 'Welcome to the authenticator program please sign in :'

25.times{ print "-"}
puts
puts "Username :"
# user_name = gets.chomp
# user_name_check = users.select{|user| user[:name] == user_name}
attempts = 1

while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == 'n'
  attempts += 1
end