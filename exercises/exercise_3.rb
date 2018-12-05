require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

store = Store.find_by(name: "Gastown")
store.destroy

puts "There are #{Store.count} stores in the database."