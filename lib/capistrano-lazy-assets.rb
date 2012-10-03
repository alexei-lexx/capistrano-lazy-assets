require "capistrano-lazy-assets/version"

module Capistrano
  module Lazy
    module Assets
      # Your code goes here...
    end
  end
end

configuration = Capistrano::Configuration.respond_to?(:instance) ?
    Capistrano::Configuration.instance(:must_exist) :
    Capistrano.configuration(:must_exist)

configuration.load do
  namespace :example do
    task :test, :roles => :app do
      run 'ls -lah'
    end
  end
end