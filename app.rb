require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
  @pig_latin = PigLatinizer.new(params[:words])
  erb :user_input
  end

  #post '/piglatinize' do
    
  #end
end
