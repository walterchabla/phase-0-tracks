# Releases 0-3: Build Something Awesome

# require gems
require 'sqlite3'
require 'faker'

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
    puts "Day went to the gym: #{schedule['went_day']}\nHours spent in the gym: #{schedule['hours_spend']}\nInspirational quote of the day: #{schedule['inspirational_quote']}"
    end
end

# testing method
# retrieve_data(db)

#User interface

puts "Nice job on going to the gym!\nLets keep track of days and hours at the gym so you can see your progress.\nIf you need to update information about day or hour type 'update' otherwise press enter to continue"
answer = gets.chomp

puts "Day that you went to the gym?"
day = gets.chomp

puts "How many hours did you spent in the gym?"
hours = gets.chomp

puts "Write an inspirational quote to inspire you to go to the gym tomorrow."
quote = gets.chomp
