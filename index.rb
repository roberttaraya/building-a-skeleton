require 'sinatra'
require 'shotgun'
require 'active_record'

#established a database connection
ActiveRecord::Base.establish_connection(:adapter => 'postgresql', :database => "skeleton_development")

#automatically runs all migrations on server start
ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths)

class Widget < ActiveRecord::Base
end

get '/' do
  Widget.create(title: 'raorao')
  @message = "hello world!"
  @widgets = Widget.all
  erb :index
end