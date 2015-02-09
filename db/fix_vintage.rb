def get_year(yy)
  if yy > 20
    yy + 1900
  elsif yy <= 20 and yy > 0
    yy + 2000
  else
    0
  end
end

Item.all.each do |i|
  item = i.name.split(" - ");
  yy = get_year(item[1].to_i)
  puts "#{item[0]}, #{item[1]}, #{yy}"

  if yy > 0
    vintage = ItemVintage.where(year: yy).first
    i.vintage_id = vintage.id
    i.name = item[0]
    i.save!
  end
end