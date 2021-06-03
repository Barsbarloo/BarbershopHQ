#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Clients < ActiveRecord::Base 
	validates :name, presence: true
	validates :phone, presence: true
	validates :datestamp, presence: true
	validates :color, presence: true
end

class Barbers < ActiveRecord::Base
end
before do
	@barbers = Barbers.all
end
get '/' do
	erb :index			
end

get '/visit' do
	erb :visit
end

post '/visit' do

	c = Clients.new params[:client]
	c.save

	erb "<h2>Спасибо, вы записались!</h2>"

end
