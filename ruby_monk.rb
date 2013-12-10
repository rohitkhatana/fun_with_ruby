#<< also can be used to append
[1,2,3,4,5] << 'woot'


#also can use push

[1,2,3].push("woot")


#map method (array transformation)
p [1,2,3,4,5].map{|i| i*3}

#filtering element using select method

p [1,2,3,4,5].select {|number| number % 2 ==0}

arr = [1,2,3,4,5,6]
#delete from array
arr.delete(5)


#multiple delete

arr.delete_if{ |i| i <4 }

#hashes in ryby

st_age = {"jack" => 10, "rohit" => 22}

