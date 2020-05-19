users = [
  {name: 'Chris', password: '12345'}, {name:'Joe', password:'joeblow'}, {name:'Sam', password: 'password'}, {name: 'Steve', password: 'password1'}
]


 
puts 'Welcome to the authenticator program please sign in :'

25.times{ print "-"}
puts

def auth_user(name, password, list_of_users)
   list_of_users.each do |user| 
    if user[:name] == name && user[:password] == password
      return user
    end
  end
  "Credentials were not correct" #Last return implied
end
attempts = 1

while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == 'n'
  attempts += 1
end
 puts "You have exceeded the number of attempts" if attempts == 4