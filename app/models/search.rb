class Search
  def self.for(keyword)
    keyword_search = "%#{keyword.downcase}%"

    Post.where('lower(album_name) LIKE ?', keyword_search) +
      Post.where('lower(artist) LIKE ?', keyword_search)
  end
end