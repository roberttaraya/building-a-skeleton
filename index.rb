require 'sinatra'
require 'shotgun'
require_relative 'database'
require_relative 'models/widget.rb'

get '/' do
  Widget.create(title: 'raorao')
  @message = "hello world!"
  @widgets = Widget.all
  erb :index
end