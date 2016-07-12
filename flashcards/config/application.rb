require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Flashcards
  class Application < Rails::Application

    config.active_record.raise_in_transactional_callbacks = true

    config.middleware.insert_before 0, "Rack::Cors", :debug => true, :logger => (-> { Rails.logger }) do
          allow do
            origins '*'  # limit this?

            resource 'api/v1/cards',
              :headers => :any,
              :methods => [:get, :post]

          end
        end

  end
end
