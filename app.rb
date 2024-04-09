require "sinatra"
require "sinatra/reloader"

#rake grade: 5hYUzTQhiti4tuCgc5ihzrW6

get("/") do
  erb(:root)
end

get("/process_roll") do
  @rolls = []
  @num_rolls = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i
  @num_rolls.times do
    die = rand(1..@num_sides)
    @rolls.push(die)
  end
erb(:results)
end
