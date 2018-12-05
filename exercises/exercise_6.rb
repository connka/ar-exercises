require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store4 = Store.find_by(id:4)
@store5 = Store.find_by(id:5)
@store6 = Store.find_by(id:6)


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Kate", last_name: "Connolly", hourly_rate: 40)
@store1.employees.create(first_name: "David", last_name: "Coolguy", hourly_rate: 50)
@store2.employees.create(first_name: "Bella", last_name: "Ladygirl", hourly_rate: 20)
@store2.employees.create(first_name: "Olivia", last_name: "Workshere", hourly_rate: 70)
@store4.employees.create(first_name: "Hank", last_name: "Thecat", hourly_rate: 30)
@store4.employees.create(first_name: "Henry", last_name: "O'Riley", hourly_rate: 60)
@store4.employees.create(first_name: "Helena", last_name: "Smith", hourly_rate: 50)
@store5.employees.create(first_name: "Thomas", last_name: "Vivaldi", hourly_rate: 70)
@store5.employees.create(first_name: "Lucas", last_name: "Creature", hourly_rate: 40)
@store6.employees.create(first_name: "Boss", last_name: "Lady", hourly_rate: 100)

puts "There are #{Employee.count} working for this company now."