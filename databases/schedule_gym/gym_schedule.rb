# Releases 0-3: Build Something Awesome

# require gem
require 'sqlite3'

# created SQLite3 database
db = SQLite3::Database.new("schedule.db")
db.results_as_hash = true

# fancy string delimiters to create a table for schedule.db
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS schedule(
    id INTEGER PRIMARY KEY,
    went_day VARCHAR(15),
    hours_spend VARCHAR(30),
    inspirational_quote VARCHAR(255)
    )
SQL

# create schedule table in database
db.execute(create_table_cmd)

# method insert_schedule with 4 arguments that adds data to schedule table
def insert_schedule(db, went_day, hours_spend, inspirational_quote)
  db.execute("INSERT INTO schedule (went_day, hours_spend, inspirational_quote) VALUES (?, ?, ?)", [went_day, hours_spend, inspirational_quote])
end

# testing method
# insert_schedule(db, "Monday", "2 hours", "It hurts now but one day it will be your warm up. -MGQ")

# method retrieve_data that retrieves data from schedule table and prints in user friendly way
def retrieve_data(db)
  schedules = db.execute("SELECT * FROM schedule")
  schedules.each do |schedule|
    puts "--------------------------------"
    puts "Day went to the gym: #{schedule['went_day']}\nHours spent in the gym: #{schedule['hours_spend']}\nInspirational quote to motivate you to go tomorrow: #{schedule['inspirational_quote']}\nNumber if need to update any of this information: #{schedule['id']}"
    end
end

# testing method
# retrieve_data(db)

# methods to update data from schedule table,
# method to update went_day
def update_day(db, id_num, new_data)
  db.execute("UPDATE schedule SET went_day=(?) WHERE id=(?)", [new_data, id_num])
  schedules = db.execute("SELECT * FROM schedule WHERE id=(?)",[id_num])
  schedules.each do |schedule|
    puts "--------------------------------"
    puts "Day went to the gym: #{schedule['went_day']}\nHours spent in the gym: #{schedule['hours_spend']}\nInspirational quote to motivate you to go tomorrow: #{schedule['inspirational_quote']}\nNumber if need to update any of this information: #{schedule['id']}"
  end
end

# method to update hours_spend
def update_hour(db, id_num, new_data)
  db.execute("UPDATE schedule SET hours_spend=(?) WHERE id=(?)", [new_data, id_num])
  schedules = db.execute("SELECT * FROM schedule WHERE id=(?)",[id_num])
  schedules.each do |schedule|
    puts "--------------------------------"
    puts "Day went to the gym: #{schedule['went_day']}\nHours spent in the gym: #{schedule['hours_spend']}\nInspirational quote to motivate you to go tomorrow: #{schedule['inspirational_quote']}\nNumber if need to update any of this information: #{schedule['id']}"
  end
end

# method to update inspirational quote
def update_inspirational_quote(db, id_num, new_data)
  db.execute("UPDATE schedule SET inspirational_quote=(?) WHERE id=(?)", [new_data, id_num])
  schedules = db.execute("SELECT * FROM schedule WHERE id=(?)",[id_num])
  schedules.each do |schedule|
    puts "--------------------------------"
    puts "Day went to the gym: #{schedule['went_day']}\nHours spent in the gym: #{schedule['hours_spend']}\nInspirational quote to motivate you to go tomorrow: #{schedule['inspirational_quote']}\nNumber if need to update any of this information: #{schedule['id']}"
  end
end

#User interface
idx = 0
while idx != 'done'
  puts "--------------------------------"
  puts "Nice job on going to the gym!\nLets keep track of days and hours at the gym so you can see your progress.\nIf you need to update information about day or hour type 'update' or to exit type 'done' otherwise press enter to continue:\n   "
  answer = gets.chomp

  if answer == 'update'
    retrieve_data(db)
    puts "Type number of the information to update:\n   "
    number = gets.chomp
    puts "What would you like to update: day, hours or inspirational quote:\n   "
    data = gets.chomp
    puts "Type new information to update:\n   "
    data_update = gets.chomp
    case data
    when "day"
      update_day(db, number, data_update)
      exit
    when "hours"
      update_hour(db, number, data_update)
      exit
    when "inspirational quote"
      update_inspirational_quote(db, number, data_update)
      exit
    end
  else answer == 'done'
    exit
  end

  puts "Day that you went to the gym?\n   "
  day = gets.chomp

  puts "How many hours did you spent in the gym?\n   "
  hours = gets.chomp

  puts "Write an inspirational quote to inspire you to go to the gym tomorrow.\n   "
  quote = gets.chomp
  insert_schedule(db, day, hours, quote)

  puts "If you like to see your progress type 'yes'\n   "
  see_data = gets.chomp
  if see_data == 'yes'
    retrieve_data(db)
  end

idx += 1
end