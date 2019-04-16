require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store2 = Store.find_by(id: '2')
@store2.destroy
puts "#{Store.count()}"