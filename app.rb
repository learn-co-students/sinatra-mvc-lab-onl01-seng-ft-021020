require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/piglatinize' do

        piglatinizer = PigLatinizer.new

        piglatinizer.piglatinize(params[:user_phrase])

    end
end