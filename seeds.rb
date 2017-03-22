def random_time
  Time.at(rand * Time.now.to_i)
end

@tasks = [
  { name: "The First Task", description: "Wake up", completed_at: random_time },
  { name: "Go to Brunch", description: "with friends" },
  { name: "Go to Lunch", description: "with family", completed_at: random_time },
  { name: "Go to Second Lunch", description: "with puppy" },
  { name: "Play Video Games", description: "I will beat my friend", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", description: "yay~!", completed_at: random_time },
  { name: "Plant Flowers", description: "beautiful!", completed_at: random_time },
  { name: "Call Mom", description: "I love my mom" },
  { name: "She worries, you know.", description: "I am fine!" },
  { name: "Nap.", description: "relax!", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end
