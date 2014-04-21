require 'sinatra'
require 'shotgun'
require_relative 'database'

class Widget < ActiveRecord::Base
end

get '/' do
  Widget.create(title: 'raorao')
  @message = "hello world!"
  @widgets = Widget.all
  erb :index
end