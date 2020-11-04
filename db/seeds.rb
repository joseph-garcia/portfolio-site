# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Blog ##{blog}",
    body: "Trysail Sail ho Corsair red ensign hulk smartly boom jib rum gangway. Case shot Shiver me timbers gangplank crack Jennys tea cup ballast Blimey lee snow crow's nest rutters. Fluke jib scourge of the seven seas boatswain schooner gaff booty Jack Tar transom spirits."
  )
end

puts "10 Blogs created"

5.times do |skill|
  Skill.create!(
    title: "Rails ##{skill}",
    percent: 15
  )
end

puts "5 Skills created"

3.times do |p|
  PortfolioPiece.create!(
    title: "Portfolio piece ##{p}",
    subtitle: "My app",
    body: "hulk smartly boom jib rum gangway.",
    main_image: "https://placehold.it/600x400",
    thumb_image: "https://placehold.it/350x200"
  )
end
puts "3 Portfolio items created"
