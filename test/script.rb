require 'my_hash_diff'

puts({a:1, b:2, c:3}.my_diff({c: 3})) #=> {a: 1, b: 2}