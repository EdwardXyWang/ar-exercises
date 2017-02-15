require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create ([{
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
  },
  {
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
  },
  {
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
}])

@mens_stores = Store.where({
  mens_apparel: true,
  womens_apparel: false
})

for i in 0..@mens_stores.size - 1
  puts "The store's name is #{@mens_stores[i][:name]}"
  puts "The store's annual revenue is #{@mens_stores[i][:annual_revenue]}"
end

@womens_stores_and_less_than_1M = Store.where({
  womens_apparel: true,
  annual_revenue: 0..1000000
})

for i in 0..@womens_stores_and_less_than_1M.size - 1
  puts "The store's name is #{@womens_stores_and_less_than_1M[i][:name]}"
  puts "The store's annual revenue is #{@womens_stores_and_less_than_1M[i][:annual_revenue]}"
end

