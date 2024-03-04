require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

#- Richmond (annual_revenue of 1260000 carries women's apparel only)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

#- Gastown (annual_revenue of 190000 carries men's apparel only)

Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts Store.count

@mens_stores = Store.where(mens_apparel: true)
puts "Stores that carry men's apparel:"
@mens_stores.each { |store| puts "#{store.name} - Annual Revenue: #{store.annual_revenue}" }

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue > ?", true, 1000000)
puts "Women's stores with annual revenue over 1 million:"
@womens_stores.each { |store| puts "#{store.name} - Annual Revenue: #{store.annual_revenue}" }