class Search
  def self.for(keyword)
    keyword_search = "%#{keyword.downcase}%"

    District.where('lower(zip) LIKE ?', keyword_search) +
    Pol.where('lower(name) LIKE ?', keyword_search) +
    Vote.where('lower(issue) LIKE ?', keyword_search)
  end
end

# https://www.codeschool.com/screencasts/basecamp-search
