#some information about the classroom.
#a classroom with student and teacher desks, with supplies or stuff that is on the desks.

classroom = {
  classroom_info: {
  num_students: 15,
  subject: "math",
  student_not_attended:[]
  },
  student_desk: {
    desk_num: 12,
    student: {
      name: "Miguel",
      student_supplies: [
      "pens",
      "notebook",
      "calculator"
    ]
    }
  },
  teacher_desk: {
    teacher_name: "Mrs. Sabol",
    teacher_items: {
      item1: "purse",
      item2: "keys"
    },
    teacher_supplies: [
        "pens",
        "grade book",
        "attendance"
    ]
  }
}

puts classroom[:classroom_info][:subject]

puts classroom[:teacher_desk][:teacher_supplies][2]

puts classroom[:teacher_desk][:teacher_supplies].index("grade book")

puts classroom[:student_desk][:student][:student_supplies][1]

puts classroom[:student_desk][:student][:student_supplies].reverse

puts classroom

puts classroom[:classroom_info][:student_not_attended].push("Walter", "Mike")

puts classroom





