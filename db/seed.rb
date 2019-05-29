require_relative('../models/student')

Student.delete_all()

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
