class UsersController < ApplicationController
  def index
  end
  def address
    r = Region.find_by(id: params[:region_id])
    @communes = r.communes
  end
end
