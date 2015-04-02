require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module LightBlueResponsiveAdminWebApp
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
		config.assets.paths << Rails.root.join("app", "assets", "fonts")
		config.assets.precompile += %w( index.js chat.js )
		config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
  end
end
