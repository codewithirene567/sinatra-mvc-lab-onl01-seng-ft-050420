require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/receive' do
  @pig_latin = PigLatinizer.new(params[:words])
  erb :user_input
  end
end
