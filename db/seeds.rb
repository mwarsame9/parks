class Seed

  def self.begin
    seed = Seed.new
    seed.generate_state_parks
    seed.generate_national_parks
  end

  def generate_state_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Address.community,
        location: Faker::Address.state,
        description: Faker::Company.catch_phrase,
        park_type: 'State Park'
      )
      puts "Park #{i}: #{park.name} #{park.park_type} located in #{park.location}."
    end
  end

  def generate_national_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Address.community,
        location: Faker::Address.state,
        description: Faker::Company.catch_phrase,
        park_type: 'National Park'
      )
      puts "Park #{i}: #{park.name} #{park.park_type} located in #{park.location}."
    end
  end
end

Seed.begin
