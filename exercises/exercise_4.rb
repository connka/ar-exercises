require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


puts "There are #{Store.count} stores in the database."

@mens_stores = Store.where(mens_apparel: true)
puts @mens_stores.count
@mens_stores.each { |store| puts "#{store.name}'s annual revenue is #{store.annual_revenue}." }

 @womens_stores_small = Store.where('annual_revenue < ? AND womens_apparel = ?', 1000000, true)
 @womens_stores_small.each { |store| puts "#{store.name}'s annual revenue is #{store.annual_revenue}." }