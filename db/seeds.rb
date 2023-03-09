require 'faker'

Movie.destroy_all if Rails.env.development?

print "Creating movies..."
20.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    poster_url: Faker::Internet.url,
    rating: Faker::Number.between(from: 1, to: 10)
  )
  print "."
end

puts "#{Movie.all.count} movies created!"
