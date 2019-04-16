require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
p "What is the store name?"
input = gets.chomp
store = Store.create(name: input)
store.errors.each do |error|
    if error == :base
        puts store.errors[error].join(", ")
    else
        puts error.to_s + " " + store.errors[error].join(", ")
    end

    
end

