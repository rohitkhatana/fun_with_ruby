# 1...10 THREE DOT will tell ruby that it is (10) excluded means run only upto 9
# 1..10 two dot means incuded eun upto 10

#iterators loop keyword
i = 20

loop do

  i -= 1
  
  print "#{i}"

  break if i <= 0

end


#next keyword
#this loop will only print odd number and skip the even as NEXT IF
i = 20

loop do

  i -= 1

  next if i % 2 != 0

  print "#{i}"

  break if i <= 0

end


#.each Iterator
=begin
The loop iterator is the simplest, but also one of the least powerful.
 A more useful iterator is the .each method,
 which can apply an expression to each element of an object, one at a time.
 The syntax looks like this:
	object.each { |item| #do something end}

=end

#also can use do keyword instead of {}

# variable between || can be any thing u like. it is just a placeholder for each element of the object u r using .each on

array = [1,2,3,4,5]


array.each do |x|

  x += 10

  print "#{x}"

end



#times iterator

# .times method is like a super compact

# let suppose u want to print a string 10 times then
 10.times { print "rohit"}


#split the string and return array

#text.split(",")
