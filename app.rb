require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_phrase
  end

  post '/piglatinize' do
    @user_phrase = PigLatinizer.new(params[:user_phrase])

    erb :result
  end

end
