require 'sinatra'


get '/' do
  @message = "hello world!"
  erb :index
end