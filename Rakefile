require_relative 'config/environment.rb'
require 'sinatra/activerecord/rake'

task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end
