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

# method insert_schedule with 4 arguments that adds schedule to the table
def insert_schedule(db, went_day, hours_spend, inspirational_quote)
  db.execute("INSERT INTO schedule (went_day, hours_spend, inspirational_quote) VALUES (?, ?, ?)", [went_day, hours_spend, inspirational_quote])
end