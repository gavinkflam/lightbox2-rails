# :stars: lightbox2-rails

[![Gem Version](http://img.shields.io/gem/v/lightbox2-rails.svg)](https://rubygems.org/gems/lightbox2-rails)
[![Gem Downloads](https://img.shields.io/gem/dt/lightbox2-rails.svg)](https://rubygems.org/gems/lightbox2-rails)

[Lightbox2](http://lokeshdhakar.com/projects/lightbox2) for Rails asset pipeline

- Modified for [Turbolinks](https://github.com/rails/turbolinks) and [Sprockets](https://github.com/sstephenson/sprockets)' asset digests compatibility

- Lightbox2 version: [2.8.2](https://github.com/lokesh/lightbox2/releases/tag/v2.8.2)

## Installation

1. Add to your `Gemfile` and install with bundler:

  ```ruby
  gem 'lightbox2-rails'
  ```
  
  ```bash
  bundle install
  ```

2. Add to your `config/initializers/assets.rb` in order to have the images for lightbox precompiled:

  ```ruby
  Rails.application.config.assets.precompile += %w( lightbox/* )
  ```

3. Require the modified Lightbox2 javascript file in `app/assets/javascripts/application.js`:

  ```js
  //= require lightbox
  ```
  
  Or in `app/assets/javascripts/application.js.coffee`:
  
  ```coffeescript
  #= require lightbox
  ```

4. Require the modified Lightbox2 css file in `app/assets/stylesheets/application.css`:
  
  ```css
  *= require lightbox
  ```
  Or in `app/assets/javascripts/application.css.scss` / `app/assets/javascripts/application.css.sass`:
  
  ```scss
  @import 'lightbox';
  ```
  
  ```sass
  @import lightbox
  ```

5. Changing default options (Optional)

  Please refer to [Lightbox2 project page](http://lokeshdhakar.com/projects/lightbox2/#options).

## Acknowledgements

[Lightbox2](http://lokeshdhakar.com/projects/lightbox2) created by Lokesh Dhakar, licensed under the [Creative Commons Attribution 2.5 License](http://creativecommons.org/licenses/by/2.5/)

Copyright [Gavin Lam](https://www.gavin.hk), released under the MIT License.
