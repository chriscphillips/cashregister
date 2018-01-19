require "sinatra"
require_relative "cashregister.rb"

get '/' do
	erb :home
end

# post '/book_choice'do
#      isbn = params[:isbn]
#      redirect '/result?isbn=' + isbn
# end

# get '/result' do
# 	isbn = params[:isbn]
# 	erb :result, :locals => {:isbn => isbn}
# end


