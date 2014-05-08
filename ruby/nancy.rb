require 'sinatra'

# class HelloWorldApp < Sinatra::Base
# get '/' do
#   "Hello, world!"
# end

# class HelloWorldApp < Sinatra::Base
  get '/?:name?' do
    "Hello, #{params[:name] ? params[:name] : 'world'}!"
  end
# end

# get '/' do
#   erb :index
# end