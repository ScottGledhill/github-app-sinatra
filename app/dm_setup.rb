require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'models/user'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/githubapp_#{ENV['RACK_ENV']}")
DataMapper.finalize
