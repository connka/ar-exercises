require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

puts Store.first.name
@store1 = Store.first
puts "I've assigned it to an instance variable (#{@store1.name})"
@store2 = Store.find_by(id:2)
puts @store2.name
@store1.name = "Calgary"
puts @store1.name
@store1.save