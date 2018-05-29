# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'Electronics')
Category.create(name: 'Home & Furniture')
Category.create(name: 'Outdoors')
Category.create(name: 'Toys')
Category.create(name: 'Books & Films')
Category.create(name: 'Services')

SubCategory.create(name: 'Headphones', category_id:1)
SubCategory.create(name: 'Laptops', category_id:1)
SubCategory.create(name: 'Cameras', category_id:1)
SubCategory.create(name: 'TVs', category_id:1)
SubCategory.create(name: 'Speakers',category_id:1)
SubCategory.create(name: 'Mobile Phone',category_id:1)
SubCategory.create(name: 'Tablets',category_id:1)
SubCategory.create(name: 'Tent',category_id:3)


# Product.create(price: , wireless: , workout:, age: )
