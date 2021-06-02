#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Clients < ActiveRecord::Base 
end

class Barbers < ActiveRecord::Base
end

get '/' do
	erb :index			
end