
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

# Category.create!(name: 'Electronics', photo: 'electronics.jpg')
# Category.create!(name: 'Home & Furniture', photo: 'home_furniture.jpg')
# Category.create!(name: 'Outdoors', photo: 'Outdoors.png')
# Category.create!(name: 'Toys', photo: 'toys.jpg')
# Category.create!(name: 'Books & Films', photo: 'books.png')
# Category.create!(name: 'Services', photo: 'services.jpg')

SubCategory.destroy_all
Category.destroy_all
UserAnswer.destroy_all
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all

url = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528271221/ftvrsf97a0dyezcnvrhz.png"
category = Category.new(name: 'Electronics')
category.remote_photo_url = url
category.save

url_2 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528271222/fn9ryfwz3a88mjtyuao2.png"
category_2 = Category.new(name: 'Home & Furniture')
category_2.remote_photo_url = url_2
category_2.save

url_3 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528271224/zkqdfnow7songz43w9cj.png"
category_3 = Category.new(name: 'Outdoors')
category_3.remote_photo_url = url_3
category_3.save

url_4 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528271225/nvvtt3ubdp0vi1bae0tu.png"
category_4 = Category.new(name: 'Toys')
category_4.remote_photo_url = url_4
category_4.save

url_5 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528271226/bmdc7rmrz6hdlf14r6p1.png"
category_5 = Category.new(name: 'Books & Films')
category_5.remote_photo_url = url_5
category_5.save

url_6 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528271228/d9y9vqjxthobpf5vvwmy.png"
category_6 = Category.new(name: 'Services')
category_6.remote_photo_url = url_6
category_6.save

# SubCategory.create!(name: 'Tent',category_id:category_3.id)

sub_category_url_1 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1528273543/if_Headphones_648231_1.png"
sub_category_1 = SubCategory.create!(name: 'Headphones', category_id: category.id)
sub_category_1.remote_photo_url = sub_category_url_1
sub_category_1.save!

sub_category_url_2 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528273543/if_latop_531896.png"
sub_category_2 = SubCategory.create!(name: 'Laptops', category_id: category.id)
sub_category_2.remote_photo_url = sub_category_url_2
sub_category_2.save!

sub_category_url_3 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528273542/if_camera_226661.png"
sub_category_3 = SubCategory.create!(name: 'Cameras', category_id: category.id)
sub_category_3.remote_photo_url = sub_category_url_3
sub_category_3.save!

sub_category_url_4 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528273542/if_retrotv_245340.png"
sub_category_4 = SubCategory.create!(name: 'TVs', category_id: category.id)
sub_category_4.remote_photo_url = sub_category_url_4
sub_category_4.save!

sub_category_url_5 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528273542/if_Music_Entertainment_plug_music_speakers_mic_444886.png"
sub_category_5 = SubCategory.create!(name: 'Speakers', category_id: category.id)
sub_category_5.remote_photo_url = sub_category_url_5
sub_category_5.save!

sub_category_url_6 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528273542/if_smartphone_281888.png"
sub_category_6 = SubCategory.create!(name: 'Mobile Phones', category_id: category.id)
sub_category_6.remote_photo_url = sub_category_url_6
sub_category_6.save!

sub_category_url_7 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528273542/if_Tablet-Chart_379374.png"
sub_category_7 = SubCategory.create!(name: 'Tablets', category_id: category.id)
sub_category_7.remote_photo_url = sub_category_url_7
sub_category_7.save!

sub_category_url_8 = "https://res.cloudinary.com/dzcerxkyh/image/upload/v1528273542/if_gamecontroller_1055053.png"
sub_category_8 = SubCategory.create!(name: 'Gaming', category_id: category.id)
sub_category_8.remote_photo_url = sub_category_url_8
sub_category_8.save!

sub_category_url_9 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1528448037/if_clothing-tshirts_383287_1.png"
sub_category_9 = SubCategory.create!(name: 'Apparel', category: category_3)
sub_category_9.remote_photo_url = sub_category_url_9
sub_category_9.save!

sub_category_url_10 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1528448037/if_Snow-2_378834.png"
sub_category_10 = SubCategory.create!(name: 'Snow', category: category_3)
sub_category_10.remote_photo_url = sub_category_url_10
sub_category_10.save!

sub_category_url_11 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1528448037/if_Hiking_592971.png"
sub_category_11 = SubCategory.create!(name: 'Hiking', category: category_3)
sub_category_11.remote_photo_url = sub_category_url_11
sub_category_11.save!

sub_category_url_12 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1528448037/if_sportix_bike_459136.png"
sub_category_12 = SubCategory.create!(name: 'Cycling', category: category_3)
sub_category_12.remote_photo_url = sub_category_url_12
sub_category_12.save!

sub_category_url_13 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1528448037/if_swimming-goggles_329049.png"
sub_category_13 = SubCategory.create!(name: 'Swimming', category: category_3)
sub_category_13.remote_photo_url = sub_category_url_13
sub_category_13.save!

sub_category_url_14 = "http://res.cloudinary.com/dzcerxkyh/image/upload/v1528448037/if_backpack_361968.png"
sub_category_14 = SubCategory.create!(name: 'Camping', category: category_3)
sub_category_14.remote_photo_url = sub_category_url_14
sub_category_14.save!


quiz = Quiz.create!(sub_category: sub_category_1)
quiz2 = Quiz.create!(sub_category: sub_category_2)
quiz3 = Quiz.create!(sub_category: sub_category_3)
quiz4 = Quiz.create!(sub_category: sub_category_4)
quiz5 = Quiz.create!(sub_category: sub_category_5)
quiz6 = Quiz.create!(sub_category: sub_category_6)
quiz7 = Quiz.create!(sub_category: sub_category_7)
quiz8 = Quiz.create!(sub_category: sub_category_8)

# Tree logic
q1 = quiz.questions.create!(content: "What style of headphone do you prefer?")

a1 = Answer.create!(content: 'In-ear', question: q1)
a2 = Answer.create!(content: 'Over-ear', question: q1)

q2 = quiz.questions.create!(content: 'Will you be using your headphones to talk on the phone?', parent_answer: a1)
q3 = quiz.questions.create!(content: 'Will you be using your headphones to talk on the phone?', parent_answer: a2)

a3 = Answer.create!(content: 'Yes', question: q2)
a4 = Answer.create!(content: 'No', question: q2)
a5 = Answer.create!(content: 'Yes', question: q3)

a6 = Answer.create!(content: 'No', question: q3)#

q4 = quiz.questions.create!(content: 'Where will you primarily be using your headphones?', parent_answer: a3)
q5 = quiz.questions.create!(content: 'Where will you primarily be using your headphones?', parent_answer: a4)
q6 = quiz.questions.create!(content: 'Where will you primarily be using your headphones?', parent_answer: a5)
q7 = quiz.questions.create!(content: 'Where will you primarily be using your headphones?', parent_answer: a6)

a7 = Answer.create!(content: 'At home', question: q4)
a8 = Answer.create!(content: 'At work', question: q4)
a9 = Answer.create!(content: 'On the go', question: q4)
a10 = Answer.create!(content: 'Everywhere', question: q4)
a11 = Answer.create!(content: 'At home', question: q5)
a12 = Answer.create!(content: 'At work', question: q5)
a13 = Answer.create!(content: 'On the go', question: q5)
a14 = Answer.create!(content: 'Everywhere', question: q5)
a15 = Answer.create!(content: 'At home', question: q6)
a16 = Answer.create!(content: 'At work', question: q6)
a17 = Answer.create!(content: 'On the go', question: q6)
a18 = Answer.create!(content: 'Everywhere', question: q6)
a19 = Answer.create!(content: 'At home', question: q7)
a20 = Answer.create!(content: 'At work', question: q7)
a21 = Answer.create!(content: 'On the go', question: q7)
a22 = Answer.create!(content: 'Everywhere', question: q7)

q8 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a7)
q9 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a8)
q10 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a9)
q11 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a10)
q12 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a11)
q13 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a12)
q14 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a13)
q15 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a14)
q16 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a15)
q17 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a16)
q18 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a17)
q19 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a18)
q20 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a19)
q21 = quiz.questions.create!(content: 'Do you care about noise cancellation features?', parent_answer: a20)
q22 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a21)
q23 = quiz.questions.create!(content: 'Will you be exercising with your headphones on?', parent_answer: a22)

a23 = Answer.create!(content: "Yes", question: q8)
a24 = Answer.create!(content: "No", question: q8)
a25 = Answer.create!(content: "Yes", question: q9)
a26 = Answer.create!(content: "No", question: q9)
a27 = Answer.create!(content: "Yes", question: q10)
a28 = Answer.create!(content: "No", question: q10)
a29 = Answer.create!(content: "Yes", question: q11)
a30 = Answer.create!(content: "No", question: q11)
a31 = Answer.create!(content: "Yes", question: q12)
a32 = Answer.create!(content: "No", question: q12)
a33 = Answer.create!(content: "Yes", question: q13)
a34 = Answer.create!(content: "No", question: q13)
a35 = Answer.create!(content: "Yes", question: q14)
a36 = Answer.create!(content: "No", question: q14)
a37 = Answer.create!(content: "Yes", question: q15)
a38 = Answer.create!(content: "No", question: q15)
a39 = Answer.create!(content: "Yes", question: q16)
a40 = Answer.create!(content: "No", question: q16)
a41 = Answer.create!(content: "Yes", question: q17)
a42 = Answer.create!(content: "No", question: q17)
a41 = Answer.create!(content: "Yes", question: q18)
a42 = Answer.create!(content: "No", question: q18)
a41 = Answer.create!(content: "Yes", question: q19)
a42 = Answer.create!(content: "No", question: q19)
a41 = Answer.create!(content: "Yes", question: q20)
a42 = Answer.create!(content: "No", question: q20)
a41 = Answer.create!(content: "Yes", question: q21)
a42 = Answer.create!(content: "No", question: q21)
a41 = Answer.create!(content: "Yes", question: q22)
a42 = Answer.create!(content: "No", question: q22)
a41 = Answer.create!(content: "Yes", question: q23)
a42 = Answer.create!(content: "No", question: q23)

q24 = quiz.questions.create!(content: "What's your budget?", parent_answer: a23)
q25 = quiz.questions.create!(content: "What's your budget?", parent_answer: a24)
q26 = quiz.questions.create!(content: "What's your budget?", parent_answer: a25)
q27 = quiz.questions.create!(content: "What's your budget?", parent_answer: a26)
q28 = quiz.questions.create!(content: "What's your budget?", parent_answer: a27)
q29 = quiz.questions.create!(content: "What's your budget?", parent_answer: a28)
q30 = quiz.questions.create!(content: "What's your budget?", parent_answer: a29)
q31 = quiz.questions.create!(content: "What's your budget?", parent_answer: a30)
q32 = quiz.questions.create!(content: "What's your budget?", parent_answer: a31)
q33 = quiz.questions.create!(content: "What's your budget?", parent_answer: a32)
q34 = quiz.questions.create!(content: "What's your budget?", parent_answer: a33)
q35 = quiz.questions.create!(content: "What's your budget?", parent_answer: a34)
q36 = quiz.questions.create!(content: "What's your budget?", parent_answer: a35)
q37 = quiz.questions.create!(content: "What's your budget?", parent_answer: a36)
q38 = quiz.questions.create!(content: "What's your budget?", parent_answer: a37)
q39 = quiz.questions.create!(content: "What's your budget?", parent_answer: a38)
q40 = quiz.questions.create!(content: "What's your budget?", parent_answer: a39)
q41 = quiz.questions.create!(content: "What's your budget?", parent_answer: a40)
q42 = quiz.questions.create!(content: "What's your budget?", parent_answer: a41)
q43 = quiz.questions.create!(content: "What's your budget?", parent_answer: a42)

a43 = Answer.create!(content: "$50", question: q24)
a44 = Answer.create!(content: "$100", question: q24)
a45 = Answer.create!(content: "$50", question: q25)
a46 = Answer.create!(content: "$100", question: q25)
a47 = Answer.create!(content: "$50", question: q26)
a48 = Answer.create!(content: "$100", question: q26)
a49 = Answer.create!(content: "$50", question: q27)
a50 = Answer.create!(content: "$100", question: q27)
a51 = Answer.create!(content: "$50", question: q28)
a52 = Answer.create!(content: "$100", question: q28)
a53 = Answer.create!(content: "$50", question: q29)
a54 = Answer.create!(content: "$100", question: q29)
a55 = Answer.create!(content: "$50", question: q30)
a56 = Answer.create!(content: "$100", question: q30)
a57 = Answer.create!(content: "$50", question: q31)
a58 = Answer.create!(content: "$100", question: q31)
a59 = Answer.create!(content: "$50", question: q32)
a60 = Answer.create!(content: "$100", question: q32)
a61 = Answer.create!(content: "$50", question: q33)
a62 = Answer.create!(content: "$100", question: q33)
a63 = Answer.create!(content: "$50", question: q34)
a64 = Answer.create!(content: "$100", question: q34)
a65 = Answer.create!(content: "$50", question: q35)
a66 = Answer.create!(content: "$100", question: q35)
a67 = Answer.create!(content: "$50", question: q36)
a68 = Answer.create!(content: "$100", question: q36)
a69 = Answer.create!(content: "$50", question: q37)
a70 = Answer.create!(content: "$100", question: q37)
a71 = Answer.create!(content: "$50", question: q38)
a72 = Answer.create!(content: "$100", question: q38)
a73 = Answer.create!(content: "$50", question: q39)
a74 = Answer.create!(content: "$100", question: q39)
a75 = Answer.create!(content: "$50", question: q40)
a76 = Answer.create!(content: "$100", question: q40)
a77 = Answer.create!(content: "$50", question: q41)
a78 = Answer.create!(content: "$100", question: q41)
