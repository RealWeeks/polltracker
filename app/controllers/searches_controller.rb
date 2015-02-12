class SearchesController < ApplicationController
  def index
    @keyword = params[:keyword]

#    @results = ::Search.for(keyword)
    if district = District.find_by(zipcode: @keyword)
      redirect_to district
    elsif pol = Pol.find_by(name: @keyword)
      redirect_to pol
    elsif bills = Bill.where('lower(name) LIKE ?',"%#{@keyword}%")
        if !bills.empty?
          redirect_to bills.first
        end
      end
  end

end
