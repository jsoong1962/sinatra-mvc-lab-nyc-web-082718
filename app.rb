require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
   @piglatinize = PigLatinizer.new.piglatinize(params[:user_phrase])
  erb :last_response
end
end
