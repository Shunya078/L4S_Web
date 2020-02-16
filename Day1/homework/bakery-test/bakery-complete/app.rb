require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra/activerecord'
require './models'