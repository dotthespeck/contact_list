require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry'

require_relative 'models/contact'

get '/' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/:id' do

@id = Contact.select("id")
@id = params[:id]

@contact = Contact.find(@id)

  erb :'contacts/contacts_id'
end
