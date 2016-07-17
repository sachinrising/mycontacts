# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contact.create(
  [ { name: "Jeremy Kemper", twitter: "@bitsweat", relationship: "friend" },
    { name: "David Heinemeir Hansson", twitter: "@dhh", relationship: "business" },
    { name: "Jose Valim", twitter: "@josevalim", relationship: "business" },
    { name: "Aaron Patterson", twitter: "@tenderlove", relationship: "business" },
    { name: "Josh Peek", twitter: "@joshp", relationship: "business" },
    { name: "Xavier Noria", twitter: "@fxn", relationship: "business" },
    { name: "Yehuda Katz", twitter: "@wycats", relationship: "business" },
    { name: "Patrik Naik", twitter: "@lifo", relationship: "friend" },
    { name: "Santiago Pastorino", twitter: "@spastorino", relationship: "business" },
    { name: "Carl Lerche", twitter: "@carllerche", relationship: "business" },
    { name: "Emilio Tagua", twitter: "@miloops", relationship: "business" },
    { name: "Ryan Bigg", twitter: "@ryanbigg", relationship: "business" }
])
