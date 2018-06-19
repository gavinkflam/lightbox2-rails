ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../gemfiles/rails_4_2.gemfile', __FILE__)

require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])
