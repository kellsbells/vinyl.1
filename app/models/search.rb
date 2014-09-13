class Search
  def self.for(keyword)
    keyword_search = "%#{keyword.downcase}%"

    Post.where('lower(artist) LIKE ?', keyword_search)
  end
end