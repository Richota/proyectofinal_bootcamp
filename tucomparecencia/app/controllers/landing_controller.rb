class LandingController < ApplicationController
  def index
    @regions = Region.all
    @communes = Commune.all
  end
end
