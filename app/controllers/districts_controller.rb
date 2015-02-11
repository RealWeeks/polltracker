class DistrictsController < ApplicationController
  def index
    @districts = District.all
    if params[:search]
      @districts = District.search(params[:search])
    else
      nil
    end
  end

  def show
    @district = District.find(params[:id])
  end

end
