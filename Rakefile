require 'rake'
require 'active_record'

#established a database connection
ActiveRecord::Base.establish_connection(:adapter => 'postgresql', :database => "skeleton_development")

namespace :db do
  desc "create the database"
  task :create do
    exec 'createdb skeleton_development'
  end

  desc "drop the database"
  task :drop do
    exec 'dropdb skeleton_development'
  end

  desc "migrate the database"
  task :migrate do
    ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
    ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths)
  end

end