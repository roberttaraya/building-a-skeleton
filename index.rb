require 'sinatra'
require 'shotgun'

get '/' do
  @message = "hello world!"
  erb :index
end