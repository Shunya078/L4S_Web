require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'open-uri'
require 'sinatra/json'
require './models.rb'

before do
  Dotenv.load
  Cloudinary.config do |config|
    config.cloud_name = ENV['CLOUD_NAME']
    config.api_key = ENV['CLOUDINARY_API_KEY']
    config.api_secret = ENV['CLOUDINARY_API_SECRET']
  end
end

get '/' do
  @breads = Bread.all.order('id desc')
  @breads_1 = List.where(list.id_1)
  @breads_2 = List.where(list.id_2)
  erb :index
end

get '/breads' do
  @breads = Bread.all.order('id desc')
  erb :new
end

post '/breads' do
  img_url = ''
  if params[:file]
    img = params[:file]
    tempfile = img[:tempfile]
    upload = Cloudinary::Uploader.upload(tempfile.path)
    img_url = upload['url']
  end

  Bread.create({
    name: params[:name],
    img: img_url,
    price: params[:price]
  })
  list = List.find(params[:list])
  redirect '/breads'
end

post '/delete/:id' do
  Bread.find(params[:id]).destroy
  redirect '/breads'
end

post '/edit' do
  redirect '/'
end