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
    "available_seats" => 10000,
    "chair_type" => [
      "comfortable",
      "close to the game"
    ]
  },

  "middle_seats" => {
    "available_seats" => 20000,
    "chair_type" => [
      "not so comfortable",
      "not so close to the game"
    ]
  },
}


# drive code
p soccer_stadium["front_seats"]["chair_type"][1]
p soccer_stadium["front_seats"]["available_seats"]

p soccer_stadium["middle_seats"]["available_seats"]
soccer_stadium["middle_seats"]["chair_type"][2] = "not so expensive"
p soccer_stadium["middle_seats"]["chair_type"]
