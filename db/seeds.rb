require 'faker'

Assembly.destroy_all
Part.destroy_all

# create 15 assemblies
15.times do
  Assembly.create!(name: Faker::Superhero.power)
end

# create 28 parts
28.times do
  Part.create!(part_number: Faker::Number.number(10).to_s)
end

# add between 1 and 9 parts to assemblies
Assembly.all.each do |ass|
  (rand(8) + 1).times do
    i = rand(Part.all.count) + Part.first.id
    part = Part.find(i)
    ass.parts << part
    part.assemblies << ass
  end
end
