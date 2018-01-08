require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}!"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}!"
  end

  get "/say/:number/:phrase" do
    params[:number].to_i.times { "#{params[:phrase].to_i}" }
    @repeats = params[:number].to_i.to_i
    "#{@square}!"
  end

end
