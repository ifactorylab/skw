# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
regions = [{country: 'France', region: 'Bordeaux', level: 'Pauillac'},
           {country: 'France', region: 'Bordeaux', level: 'Saint Estèphe'}]
regions.each { |r| Region.find_or_create_by(r) }

types = [{name: 'Red'}, {name: 'White'}, {name: 'Rose'}, {name: 'Porto'}]
types.each { |t| ItemType.find_or_create_by(t) }

sizes = [{name: 'Demi', amount: 375}, {name: 'Standard', amount: 750}, {name: 'Magnum', amount: 1500}]
sizes.each { |s| ItemSize.find_or_create_by(s) }

for year in 1940..80 do
  ItemVintage.find_or_create_by({year: year})
end


