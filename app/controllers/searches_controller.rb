class SearchesController < ApplicationController
  def index
    keyword = params[:keyword]

      if district = District.find_by(zipcode: keyword)
        redirect_to district
      elsif pol = Pol.find_by(name: keyword)
        redirect_to pol
      elsif bill = Bill.find_by(name: keyword)
        redirect_to bill
      else
        @results = Search.for(keyword)

      end
  end
end
