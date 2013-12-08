require 'tire'
tweet = ' like to have a beer at my home #railsrumble in full swing at @joshsoftware today. 5 teams, 16 people, pizza and beer! go team.'
puts  Tire::Index.new('').analyze(tweet, analyzer: 'snowball')['tokens'].map{|e| e['token'] }

Tire::Index.new('').analyze('seeing', analyzer: 'snowball')

ti = ['2323','23323']

print ti.instance_of



