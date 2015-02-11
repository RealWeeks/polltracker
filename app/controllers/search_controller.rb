class SearchController < ApplicationController
  def index
    keyword = params[:keyword]

      if district = District.find_by(zip: keyword)
        redirect_to district
      elsif pol = Pol.find_by(name: keyword)
        redirect_to pol
      else
        @results = Search.for(keyword)
      end
  end
end
