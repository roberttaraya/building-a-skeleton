require 'sinatra'
require 'shotgun'

require_relative 'database'
require_relative '../app/models/widget'
require_relative '../app/controllers/index'


configure do
  set :views, File.expand_path('../../app/views',__FILE__)
end

