class AccomodationsController < ApplicationController
  def index
    @accomodations = Accomodation.all
  end
end
