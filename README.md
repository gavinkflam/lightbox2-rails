# lightbox2-rails

[Lightbox2](http://lokeshdhakar.com/projects/lightbox2) for Rails asset pipeline

Lightbox2 version: 2.7.1

## Installation

Add to your `Gemfile` and install with bundler:

```ruby
gem 'lightbox2-rails'
```

Add to your `config/initializers/assets.rb` in order to have the images for lightbox precompiled:
```ruby
Rails.application.config.assets.precompile += %w( lightbox/* )
```

Require the Lightbox2 javascript file in `app/assets/javascripts/application.js`:

```js
//= require lightbox
```

Require the modified Lightbox2 css file in `app/assets/stylesheets/application.css`:

```css
*= require lightbox
```

## Acknowledgements

[Lightbox2](http://lokeshdhakar.com/projects/lightbox2) created by Lokesh Dhakar, licensed under the [Creative Commons Attribution 2.5 License](http://creativecommons.org/licenses/by/2.5/)

Copyright [Gavin Lam](http://gavin.hk), released under the MIT License.
