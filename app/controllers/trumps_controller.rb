class TrumpsController < ApplicationController

  def show
    @trump = Trump.find(params[:id])
  end
end
