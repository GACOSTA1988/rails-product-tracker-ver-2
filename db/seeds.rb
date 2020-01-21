# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

50.times do |index|
    products =[]
    products.push(Product.create!(name: Faker::Beer.name, cost: "2", country_of_origin: "US"))
    products
    5.times do |review|
        products.each do |product|
        Review.create! :author => Faker::Superhero.name, :content_body => "Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio", :rating => "2", :product_id => product.id
      end
  end
end
  
  p "created #{Product.count} Beer with #{Review.count} reviews"