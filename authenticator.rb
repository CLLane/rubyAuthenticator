users = [
  {name: 'Chris', password: '12345'}, {name:'Joe', password:'joeblow'}, {name:'Sam', password: 'password'}, {name: 'Steve', password: 'password1'}
]
count = 0

def incriment 
  count++
end

puts 'Welcome to the authenticator program please sign in :'

25.times{ print "-"}
puts
puts "Username :"
user_name = gets.chomp
user_name_check = users.select{|user| user[:name] == user_name}
if user_name_check.length > 0 puts 'Password'
else puts 'Press n to quit or any other key to continue'
end

