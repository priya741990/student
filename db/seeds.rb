# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


student = Student.create(
  first_name: "Priya",
  last_name: "Eakam",
  email: "ss@gmail.com"
)

student = Student.create(
  first_name: "sss",
  last_name: "yy",
  email: "ss@gmail.com"
)


student = Student.create(
  first_name: "Priya",
  last_name: "Eakam",
  email: "ss@gmail.com"
)




student = Student.create(
  first_name: "MAnya",
  last_name: "Mani",
  email: "yy@gmail.com"
)

student = Student.create(
  first_name: "Thanish",
  last_name: "Mani",
  email: "tt@gmail.com"
)


20.times do |i|
  puts "Creating student #{i+1}"
Student.create(
  first_name: "Student #{i+1}",
  last_name: "Lname #{i+1}",
  email:"student #{i+1}@gmail.com"
)
end
