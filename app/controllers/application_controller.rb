class ApplicationController < ActionController::Base
  include Authentication

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  use_inertia_instance_props

  inertia_share auth: -> {
    if authenticated?
      {
        user: Current.session.user.as_json(only: %i[id email_address])
      }
    end
  }
end
