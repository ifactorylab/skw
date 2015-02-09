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