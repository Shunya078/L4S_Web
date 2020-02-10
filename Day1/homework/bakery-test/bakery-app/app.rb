require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/model.rb'

get '/' do
  'こんにちは'
end