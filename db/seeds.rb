
categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "seeding starts"
Restaurant.delete_all

10.times do
  resto = Restaurant.new(name: Faker::StarWars.specie, address: Faker::StarWars.planet, category: categories.sample, phone_number: Faker::PhoneNumber.cell_phone)
  if resto.save
    puts "Saving #{resto.name}"
  end
end

puts "seeding finished"
