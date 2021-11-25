class UsersController < ApplicationController
  def dashboard
    @vehicles = Vehicle.where(user_id: current_user)
  end
end
