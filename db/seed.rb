require_relative('../models/student')
require_relative('../models/house')

Student.delete_all
House.delete_all

student1 = Student.new({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "house" => "Slytherin",
  "age" => 35
})

student2 = Student.new({
  "first_name" => "Hermany",
  "second_name" => "Smith",
  "house" => "Hufflepuff",
  "age" => 34
})

student1.save
student2.save


house1 = House.new({
  "name" => "Gryffindor",
  "url" => "Griff"
  })

house2 = House.new({
  "name" => "Ravenclaw",
    "url" => "Raven"
    })

house1.save
house2.save
