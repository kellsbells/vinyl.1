class SearchController < ApplicationController
  def index
    keyword = params[:keyword]
    @results = Search.for(keyword) 
  end
end