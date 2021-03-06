# creating a data structure
# its going to contain hash and arrays
# its going to be about soccer stadium and its going to be a hash:
# soccer_stadium = {}
# inside the hash
# keys = front_seats, middle_seats, last_seats, field
# output:
# being able to call items that are inside the soccer_stadium

soccer_stadium = {
  "front_seats" => {
    available_seats: 10000,
    chair_type: [
      "comfortable",
      "close to the game"
    ]
  },

  "middle_seats" => {
    available_seats: 20000,
    chair_type: [
      "not so comfortable",
      "not so close to the game"
    ]
  },

  "last_seats" => {
    available_seats: 20000,
    chair_type: [
      "regular chair",
      "far to watch the game",
      "lowest price"
    ]
  },

  "field" => {
    "goalmouth" => 2,
    "soccer_players" => {
      "teams" => 2,
      "number_players" => 22
    },
    "field_type" => [
      "grass",
      "120 yards long",
      "80 yards wide"
    ]
  }
}


# drive code
puts "#{soccer_stadium["front_seats"][:available_seats]} number of available seats in the front."

puts "Pros of being in front seat: \n -#{soccer_stadium["front_seats"][:chair_type][1].upcase}."

puts "#{soccer_stadium["middle_seats"][:available_seats]} number of available seats in the middle."

puts "#{soccer_stadium["middle_seats"][:chair_type][2]  = "not so expensive"}"

puts soccer_stadium["middle_seats"][:chair_type]

puts soccer_stadium["last_seats"][:chair_type]

puts soccer_stadium["field"]["goalmouth"]
puts soccer_stadium["field"]["field_type"][2]

