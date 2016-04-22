def greeting
    puts "Hello everyone!"
    2.times { yield }
end

greeting { puts "How you all doing?"}


garden_tools = ["shovel","trowel","rake"]

actors = {"Tom Hanks" => "Forrest Gump", "Tom Cruise"  => "Maverick", "Tom Hardy" => "Bronson"}


garden_tools.each do |tool|
    puts "We have a #{tool}"

end

garden_tools.map! do |tools|
    puts "We loudly have #{tools.upcase}"
    tools.upcase
end

p garden_tools

actors.each do |actor, role|
    puts "#{actor} is famous for #{role}"
end

numbers = [1, 2, 3, 4, 5]

grades = {"John" => "A", "Frank" => "B", "Tim" => "C"}

numbers.each do |number|
    if number > 3
      p number
    end
end

grades.map do |name, grade|
  if grade == "A"
    puts "#{name} is on the Honor roll"
  end
end

numbers.map! do |num|
  p num
  num = num * -1
  p num
end

p numbers