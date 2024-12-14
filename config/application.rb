require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rock
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])

    config.time_zone = "Asia/Bangkok"
    # config.eager_load_paths << Rails.root.join("extras")
    config.exceptions_app = self.routes
    config.action_dispatch.show_exceptions = true
  end
end
