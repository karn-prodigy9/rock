class HomeController < ApplicationController
  inertia_config(
    default_render: true
  )

  def index
    @event = Event.first
  end

  def contact
    @name = "Karn"
    @phone_number = "061-162-5983"
  end
end
