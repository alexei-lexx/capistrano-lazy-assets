# Capistrano::Lazy::Assets

Receipt is given from http://www.bencurtis.com/2011/12/skipping-asset-compilation-with-capistrano/

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-lazy-assets'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-lazy-assets

## Usage

Add the gem to your ```Gemfile```:

```ruby
group :development do
  gem 'capistrano-lazy-assets'
end
```

Add plugin into your deploy.rb file.

```ruby
require 'capistrano-lazy-assets'
```

Check if deploy/config is load after deploy/assets in your Capfile:

```ruby
load 'deploy'
load 'deploy/assets'
Dir['vendor/gems/*/recipes/*.rb','vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }
load 'config/deploy'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
