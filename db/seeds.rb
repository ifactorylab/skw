# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# regions = [{country: 'France', region: 'Bordeaux', level: 'Margaux'},
#            {country: 'France', region: 'Bordeaux', level: 'Pauillac'},
#            {country: 'France', region: 'Bordeaux', level: 'Pessac-Léognan'},
#            {country: 'France', region: 'Bordeaux', level: 'Pomerol'},
#            {country: 'France', region: 'Bordeaux', level: 'Saint Estèphe'},
#            {country: 'France', region: 'Bordeaux', level: 'St-Emilion'},
#            {country: 'France', region: 'Bordeaux', level: 'St Julien'}]
#
# regions.each { |r| Region.find_or_create_by(r).save }
#
# types = [{name: 'Red'}, {name: 'White'}, {name: 'Rose'}, {name: 'Porto'}]
# types.each { |t| ItemType.find_or_create_by(t).save }
#
# sizes = [{name: 'Demi', amount: 375}, {name: 'Standard', amount: 750}, {name: 'Magnum', amount: 1500}]
# sizes.each { |s| ItemSize.find_or_create_by(s).save }

# ItemVintage.find_or_create_by({year: 0}).save
#
# for y in 1940..2020 do
#   ItemVintage.find_or_create_by({year: y}).save
# end
#

def get_year(yy)
  if yy > 20
    yy + 1900
  elsif yy <= 20
    yy + 2000
  end
end

Item.all.each do |i|
  item = i.name.split(" - ");
  if item.count > 1
    yy = get_year(item[1].to_i)
    puts "#{item[0]}, #{item[1]}, #{yy}"

    vintage = ItemVintage.where(year: yy).first
    i.vintage_id = vintage.id
    i.name = item[0]
    i.save!
  end
end