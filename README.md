# TldLength

Reconfigures ActionDispatch's TLD handling dynamically based on the request
host, so you don't have to mess with config.action_dispatch.tld_length for
cross-device testing using xip.io and friends

Heavily based on [Tim Lucas' Gist](https://gist.github.com/toolmantim/6632690).

## Installation:

The simplest way to use Rack::TldLength is to use Bundler.

Add Rack::TldLength to your `Gemfile`:

    gem 'tld_length'

## Usage

Add the following line to your `config/environments/development.rb`:

    config.middleware.use Rack::TldLength, /(x|n)ip\.io/, 5

And you're done!
