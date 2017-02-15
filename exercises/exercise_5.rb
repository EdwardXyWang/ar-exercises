require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "The total annual avenue is #{Store.sum('annual_revenue')}"
puts "The average avenue is #{Store.average('annual_revenue')}"
store_count = Store.where({annual_revenue: 1000000..Float::INFINITY}).size
puts "There are #{store_count} stores making more than 1M."