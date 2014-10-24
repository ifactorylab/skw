# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
regions = [{country: 'France', region: 'Bordeaux', level: 'Pauillac'},
           {country: 'France', region: 'Bordeaux', level: 'Saint Estèphe'}]
Region.create(regions)

types = [{name: 'Red'}, {name: 'White'}]
ItemTypes.create(types)

sizes = [{name: 'Demi', amount: 375}, {name: 'Standard', amount: 750}, {name: 'Magnum', amount: 1500}]
ItemSizes.create(sizes)

vintages = [{year: 1982}, {year: 1983}, {year: 1986}, {year: 2002}]
ItemVintages.create(vintages)
