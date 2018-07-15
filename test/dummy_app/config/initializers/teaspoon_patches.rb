require 'teaspoon'

# Patch to remove coffeescript dependency from teaspoon.
#
# https://github.com/jejacks0n/teaspoon/issues/405
# https://github.com/jejacks0n/teaspoon/pull/536
module Teaspoon
  class Configuration
    @@asset_manifest = %w[teaspoon.css teaspoon-filterer.js support/*.js]
  end
end

# Patch to remove precompile checking for teaspoon assets.
#
# https://github.com/modeset/teaspoon/issues/443
module RaiseUnlessPrecompiledFixer
  def raise_unless_precompiled_asset(path)
    super unless path.split('.')[-2] == 'self'
  end
end

Sprockets::Rails::HelperAssetResolvers::Environment.send(
  :prepend, RaiseUnlessPrecompiledFixer
)
