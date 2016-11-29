require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Demomailer
  class Application < Rails::Application
    #config.action_mailer.default_url_options = { host: 'localhost:3000' }
    #config.action_mailer.default_url_options = { host: 'https://young-ridge-92226.herokuapp.com' }
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
