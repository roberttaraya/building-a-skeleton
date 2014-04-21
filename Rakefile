require 'rake'

namespace :db do
  desc "create the database"
  task :create do
    exec 'createdb skeleton_development'
  end

  desc "drop the database"
  task :drop do
    exec 'dropdb skeleton_development'
  end
end