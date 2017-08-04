


20.times do |n|
  topic = Faker::Name.content
  Topic.create!(content: content,
               )
end

20.times do |n|
  comment = Faker ::Name.comment
  Comment.create!(comment: comment,
                 )
end
