class DashboardController < ApplicationController
  def index
    @away = current_user.aways.last
  end
end
