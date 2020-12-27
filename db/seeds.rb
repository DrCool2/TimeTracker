# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lov.destroy_all

Lov.create!([{
  tbl: "task",
  col: "name",
  val: "PS Lesson Emails"
  },
  {
  tbl: "task",
  col: "name",
  val: "Class Activity Supply Boxes"
  },
  {
  tbl: "task",
  col: "name",
  val: "Editing Curriculum"
  },
  {
  tbl: "task",
  col: "name",
  val: "Children's Ministry Team Meeting"
  },
  {
  tbl: "task",
  col: "name",
  val: "Sunday Services"
  },
  {
  tbl: "task",
  col: "name",
  val: "Connecting with Volunteers"
  },
  {
  tbl: "task",
  col: "name",
  val: "Writing Curriculum"
  },
  {
  tbl: "task",
  col: "name",
  val: "Record Large Group Video"
  }
  ])

p "Created #{Lov.count} LOVs. Probably Task Names."
