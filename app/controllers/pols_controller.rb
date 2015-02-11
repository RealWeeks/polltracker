class PolsController < ApplicationController
  def index
    @pols = Pol.all
  end

  def show
    @pol = Pol.find(params[:id])
  end

end
