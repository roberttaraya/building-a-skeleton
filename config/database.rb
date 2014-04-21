require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => 'postgresql', :database => "skeleton_development")