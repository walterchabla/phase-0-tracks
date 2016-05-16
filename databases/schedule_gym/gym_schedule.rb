#Releases 0-3: Build Something Awesome

# require gems
require 'sqlite3'
require 'faker'

# created SQLite3 database
db = SQLite3::Database.new("schedule.db")
db.results_as_hash = true