require 'sinatra'
require 'shotgun'
require 'active_record'

#established a database connection
ActiveRecord::Base.establish_connection(:adapter => 'postgresql', :database => "skeleton_development")

class Widget < ActiveRecord::Base
end

get '/' do
  Widget.create(title: 'raorao')
  @message = "hello world!"
  @widgets = Widget.all
  erb :index
end