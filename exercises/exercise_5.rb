require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "The company's overall revenue is: #{Store.sum(:annual_revenue)}"

puts "The company's average revenue is: #{Store.average(:annual_revenue)}"

@one_mill = Store.where('annual_revenue > ?', 1000000).count
puts "There are #{@one_mill} stores with an annual revenue is more tham 1M." 
