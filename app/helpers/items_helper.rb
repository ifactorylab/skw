module ItemsHelper
  def repo(item)
    item.repo.name.camelize
  end

  def name(item)
    item.name.camelize
  end

  def type(item)
    item.type.name.camelize
  end

  def region(item)
    r = item.region
    "#{r.level.camelize}, #{r.region.camelize}, #{r.country.camelize}"
  end

  def size(item)
    "#{item.size.name.camelize} (#{number_with_delimiter(item.size.amount)} ml)"
  end
end
