#Use bundler to load gems
require "bundler"

#Load gems from Gemfile
Bundler.require

#Load the app
require_relative "grillkorv"

#Load the app
require_relative "models/student"

Slim::Engine.set_options pretty: true, sort_attrs: false

#Run the app
run Grillkorv