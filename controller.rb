require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'json'
require_relative 'models/wordformatter.rb'

get '/' do
  erb( :home )
end

get '/address' do
  content_type( :json )
  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  return address.to_json
end

get '/camelcase/*' do
  new_string = WordFormatter.new(params[:splat].to_s)
  @new_string = new_string.camelcase
  erb( :result )
end
