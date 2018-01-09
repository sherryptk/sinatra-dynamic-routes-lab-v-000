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
    @number = params[:number].to_i
    @phrase = params[:phrase]
    number.to_i.times { "#{@phrase}" }
  end

end
