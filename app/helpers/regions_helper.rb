module RegionsHelper

  def all_repo_count(repos)
    count = 0
    repos.each { |repo| count += repo.items_count  }
    count
  end

end
