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

# SubCategory.create(name: 'Tent',category_id:category_3.id)

sub_category_url_1 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/headphones.jpg"
sub_category_1 = SubCategory.create(name: 'Headphones', category_id: category.id)
sub_category_1.remote_photo_url = sub_category_url_1
sub_category_1.save!

sub_category_url_2 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/laptop.jpg"
sub_category_2 = SubCategory.create(name: 'Laptops', category_id: category.id)
sub_category_2.remote_photo_url = sub_category_url_2
sub_category_2.save!

sub_category_url_3 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/cameras.jpg"
sub_category_3 = SubCategory.create(name: 'Cameras', category_id: category.id)
sub_category_3.remote_photo_url = sub_category_url_3
sub_category_3.save!

sub_category_url_4 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/tvs.jpg"
sub_category_4 = SubCategory.create(name: 'TVs', category_id: category.id)
sub_category_4.remote_photo_url = sub_category_url_4
sub_category_4.save!

sub_category_url_5 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/speakers.jpg"
sub_category_5 = SubCategory.create(name: 'Speakers', category_id: category.id)
sub_category_5.remote_photo_url = sub_category_url_5
sub_category_5.save!

sub_category_url_6 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/mobilephones.jpg"
sub_category_6 = SubCategory.create(name: 'Mobile Phones', category_id: category.id)
sub_category_6.remote_photo_url = sub_category_url_6
sub_category_6.save!

sub_category_url_7 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/tablets.jpg"
sub_category_7 = SubCategory.create(name: 'Tablets', category_id: category.id)
sub_category_7.remote_photo_url = sub_category_url_7
sub_category_7.save!

sub_category_url_8 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1527755777/gaming.jpg"
sub_category_8 = SubCategory.create(name: 'Gaming', category_id: category.id)
sub_category_8.remote_photo_url = sub_category_url_8
sub_category_8.save!





# # Tree logic
# q1 = Question.create(content: "What style of headphone do you prefer?")

# a1 = Answer.create(content: 'In-ear', question: q1)
# a2 = Answer.create(content: 'Over-ear', question: q1)

# q2 = Question.create(content: 'Will you be using your headphones to talk on the phone?', parent_answer: a1)
# q3 = Question.create(content: 'Will you be using your headphones to talk on the phone?', parent_answer: a2)

# a3 = Answer.create(content: 'Yes', question: q2)
# a4 = Answer.create(content: 'No', question: q2)
# a5 = Answer.create(content: 'Yes', question: q3)
# a6 = Answer.create(content: 'No', question: q3)#

# q4 = Question.create(content: 'Where will you primarily be using your headphones?', parent_answer: a3)
# q5 = Question.create(content: 'Where will you primarily be using your headphones?', parent_answer: a4)
# q6 = Question.create(content: 'Where will you primarily be using your headphones?', parent_answer: a5)
# q7 = Question.create(content: 'Where will you primarily be using your headphones?', parent_answer: a6)

# a7 = Answer.create(content: 'At home', question: q4)
# a8 = Answer.create(content: 'At work', question: q4)
# a9 = Answer.create(content: 'On the go', question: q4)
# a10 = Answer.create(content: 'Everywhere', question: q4)
# a11 = Answer.create(content: 'At home', question: q5)
# a12 = Answer.create(content: 'At work', question: q5)
# a13 = Answer.create(content: 'On the go', question: q5)
# a14 = Answer.create(content: 'Everywhere', question: q5)
# a15 = Answer.create(content: 'At home', question: q6)
# a16 = Answer.create(content: 'At work', question: q6)
# a17 = Answer.create(content: 'On the go', question: q6)
# a18 = Answer.create(content: 'Everywhere', question: q6)
# a19 = Answer.create(content: 'At home', question: q7)
# a20 = Answer.create(content: 'At work', question: q7)
# a21 = Answer.create(content: 'On the go', question: q7)
# a22 = Answer.create(content: 'Everywhere', question: q7)

# q8 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a7)
# q9 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a8)
# q10 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a9)
# q11 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a10)
# q12 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a11)
# q13 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a12)
# q14 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a13)
# q15 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a14)
# q16 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a15)
# q17 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a16)
# q18 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a17)
# q19 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a18)
# q20 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a19)
# q21 = Question.create(content: 'Do you care about noise cancellation features?', parent_answer: a20)
# q22 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a21)
# q23 = Question.create(content: 'Will you be exercising with your headphones on?', parent_answer: a22)

# a23 = Answer.create(content: "Yes", question: q8)
# a24 = Answer.create(content: "No", question: q8)
# a25 = Answer.create(content: "Yes", question: q9)
# a26 = Answer.create(content: "No", question: q9)
# a27 = Answer.create(content: "Yes", question: q10)
# a28 = Answer.create(content: "No", question: q10)
# a29 = Answer.create(content: "Yes", question: q11)
# a30 = Answer.create(content: "No", question: q11)
# a31 = Answer.create(content: "Yes", question: q12)
# a32 = Answer.create(content: "No", question: q12)
# a33 = Answer.create(content: "Yes", question: q13)
# a34 = Answer.create(content: "No", question: q13)
# a35 = Answer.create(content: "Yes", question: q14)
# a36 = Answer.create(content: "No", question: q14)
# a37 = Answer.create(content: "Yes", question: q15)
# a38 = Answer.create(content: "No", question: q15)
# a39 = Answer.create(content: "Yes", question: q16)
# a40 = Answer.create(content: "No", question: q16)
# a41 = Answer.create(content: "Yes", question: q17)
# a42 = Answer.create(content: "No", question: q17)
# a41 = Answer.create(content: "Yes", question: q18)
# a42 = Answer.create(content: "No", question: q18)
# a41 = Answer.create(content: "Yes", question: q19)
# a42 = Answer.create(content: "No", question: q19)
# a41 = Answer.create(content: "Yes", question: q20)
# a42 = Answer.create(content: "No", question: q20)
# a41 = Answer.create(content: "Yes", question: q21)
# a42 = Answer.create(content: "No", question: q21)
# a41 = Answer.create(content: "Yes", question: q22)
# a42 = Answer.create(content: "No", question: q22)
# a41 = Answer.create(content: "Yes", question: q23)
# a42 = Answer.create(content: "No", question: q23)

# q24 = Question.create(content: "What's your budget?", parent_answer: a23)
# q25 = Question.create(content: "What's your budget?", parent_answer: a24)
# q26 = Question.create(content: "What's your budget?", parent_answer: a25)
# q27 = Question.create(content: "What's your budget?", parent_answer: a26)
# q28 = Question.create(content: "What's your budget?", parent_answer: a27)
# q29 = Question.create(content: "What's your budget?", parent_answer: a28)
# q31 = Question.create(content: "What's your budget?", parent_answer: a29)
# q31 = Question.create(content: "What's your budget?", parent_answer: a30)
# q32 = Question.create(content: "What's your budget?", parent_answer: a31)
# q33 = Question.create(content: "What's your budget?", parent_answer: a32)
# q34 = Question.create(content: "What's your budget?", parent_answer: a33)
# q35 = Question.create(content: "What's your budget?", parent_answer: a34)
# q36 = Question.create(content: "What's your budget?", parent_answer: a35)
# q37 = Question.create(content: "What's your budget?", parent_answer: a36)
# q38 = Question.create(content: "What's your budget?", parent_answer: a37)
# q39 = Question.create(content: "What's your budget?", parent_answer: a38)
# q40 = Question.create(content: "What's your budget?", parent_answer: a39)
# q41 = Question.create(content: "What's your budget?", parent_answer: a40)
# q42 = Question.create(content: "What's your budget?", parent_answer: a41)
# q43 = Question.create(content: "What's your budget?", parent_answer: a42)

