# frozen_string_literal: true

require 'cuba'
require 'debug/open' if ENV['DEBUG'] == 'true'

# constants
ENVIRONMENT = ENV['RACK_ENV'] || 'development'
ROOT_PATH = File.expand_path(File.dirname(__FILE__))

# middlewares
Cuba.use Rack::Session::Cookie, :secret => ENV['SESSION_SECRET']

# routes
Cuba.define do
  # GET /
  on root do
    res.text("Welcome to the HelloApp!")
  end

  # GET /test
  on "test" do
    res.text("GET /test")
  end

  # GET /hello
  on "hello" do
    res.text("GET /hello")
  end
end

