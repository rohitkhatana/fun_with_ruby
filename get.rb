print "what is your name?"
first_name = gets.chomp   #chomp will remove the '\n' from the string

print "What's your last name?"


last_name = gets.chomp.capitalize!


print "from which are you?"

city = gets.chomp

print "from which state are you?"
state = gets.chomp


puts "#{first_name.upcase},#{last_name},#{city.upcase},#{state.upcase}"

=begin
when we use methods like capitalize it does't change the original string
ruby first make a copy of it
then capitalize it and return the copy string
 BUT we can use '!' operator which means ruby is not making the
copy of the string but it is changing the original string

It is dangerous to use ! as it change the original string
=end