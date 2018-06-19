# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
Rails.application.config.assets.precompile += %w( lightbox/* )

# Rails 4 precompiles application.css|js by default, but future version
# of Rails do not.
if Rails::VERSION::MAJOR > 4
  config.assets.precompile += %w( application.css application.js )
end
