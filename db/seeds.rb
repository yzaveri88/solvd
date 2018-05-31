# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category.create(name: 'Electronics', photo: 'electronics.jpg')
# Category.create(name: 'Home & Furniture', photo: 'home_furniture.jpg')
# Category.create(name: 'Outdoors', photo: 'Outdoors.png')
# Category.create(name: 'Toys', photo: 'toys.jpg')
# Category.create(name: 'Books & Films', photo: 'books.png')
# Category.create(name: 'Services', photo: 'services.jpg')

SubCategory.destroy_all
Category.destroy_all

url = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/electronics.jpg"
category = Category.new(name: 'Electronics')
category.remote_photo_url = url
category.save

url_2 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/home_furniture.jpg"
category_2 = Category.new(name: 'Home & Furniture')
category_2.remote_photo_url = url_2
category_2.save

url_3 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/Outdoors.png"
category_3 = Category.new(name: 'Outdoors')
category_3.remote_photo_url = url_3
category_3.save

url_4 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/toys.jpg"
category_4 = Category.new(name: 'Toys')
category_4.remote_photo_url = url_4
category_4.save

url_5 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/books.png"
category_5 = Category.new(name: 'Books & Films')
category_5.remote_photo_url = url_5
category_5.save

url_5 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/services.jpg"
category_5 = Category.new(name: 'Services')
category_5.remote_photo_url = url_5
category_5.save

SubCategory.create(name: 'Headphones', category_id: category.id)
SubCategory.create(name: 'Laptops', category_id: category.id)
SubCategory.create(name: 'Cameras', category_id: category.id)
SubCategory.create(name: 'TVs', category_id: category.id)
SubCategory.create(name: 'Speakers',category_id: category.id)
SubCategory.create(name: 'Mobile Phone',category_id: category.id)
SubCategory.create(name: 'Tablets',category_id: category.id)
SubCategory.create(name: 'Tent',category_id:category_3.id)


