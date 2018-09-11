# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

until User.all.count == 15 do
	User.create(name: Faker::DragonBall.character)
end

until EscapeGame.all.count == 50 do
  EscapeGame.create({
    name:               Faker::Dessert.topping,
    description:        Faker::Lorem.paragraph,
    city:               Faker::Address.city,
    adress:             Faker::Address.street_address,
    zipcode:            Faker::Address.zip_code
  })
end

EscapeGame.all.each do |escape_game|
  (0..rand(1..6)).each do |n|
    Scenario.create({
      escape_game_id:           escape_game.id,
      name:                  Faker::Dota.item,
      theme:                 Faker::HeyArnold.location,
      difficulty:            rand(1..5),
      description:           Faker::FamousLastWords.last_words,
      min_player:            1,
      max_player:            rand(3..6),
      duration:              [20, 25, 30, 35, 40].sample.minutes,
      price_per_player:      [15, 20, 25, 30].sample
    })
  end
end
