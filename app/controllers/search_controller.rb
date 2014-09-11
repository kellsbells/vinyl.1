class SearchController < ApplicationController
  def index
    keyword = params[:keyword]

    if artist = Post.find_by(artist: keyword)
      redirect_to artist
    elsif album_name = Post.find_by(album_name: keyword)
      redirect_to album_name
    else
      @results = Search.for(keyword)
    end

  end
end