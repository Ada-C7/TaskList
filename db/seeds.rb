# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Everything!!"
Task.destroy_all

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "Wake up"  },
  { name: "Go to Brunch", description: "with friends" },
  { name: "Go to Lunch", description: "with family"  },
  { name: "Go to Second Lunch", description: "with puppy" },
  { name: "Play Video Games", description: "I will beat my friend"  },
  { name: "High Five Somebody You Don't Know", description: "yay~!"  },
  { name: "Plant Flowers", description: "beautiful!"  },
  { name: "Call Mom", description: "I love my mom" },
  { name: "She worries, you know.", description: "I am fine!" },
  { name: "Nap.", description: "relax!"  }
]

puts "Creating Tasks"
tasks.each do |task|
  Task.create task
end
