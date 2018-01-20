require "sinatra"
require_relative "cashregister.rb"

get '/' do
	erb :home

end

post '/food_choice' do
   tuna = params[:tuna]
   goldfish = params[:goldfish]
   beans = params[:beans]
   pepperoni = params[:pepperoni]
   milk = params[:milk]
   butter = params[:butter]
   cheese = params[:cheese]
   whip_topping = params[:whip_topping]
   redirect '/getgrocery?tuna=' + tuna +'&goldfish=' + goldfish + '&beans=' + beans +'&pepperoni=' + pepperoni + '&milk=' + milk + '&butter=' + butter + '&cheese=' + cheese + '&whip_topping=' + whip_topping 
end

get '/getgrocery' do
   tuna = params[:tuna]
   goldfish = params[:goldfish]
   beans = params[:beans]
   pepperoni = params[:pepperoni]
   milk = params[:milk]
   butter = params[:butter]
   cheese = params[:cheese]
   whip_topping = params[:whip_topping]
   erb :getgrocery, :locals => {:tuna => tuna, :goldfish => goldfish, :beans => beans, :pepperoni => pepperoni, :milk => milk, :butter => butter, :cheese => cheese, :whip_topping => whip_topping}
end

post '/result' do
   tuna = params[:tuna]
   goldfish = params[:goldfish]
   beans = params[:beans]
   pepperoni = params[:pepperoni]
   milk = params[:milk]
   butter = params[:butter]
   cheese = params[:cheese]
   whip_topping = params[:whip_topping]
   redirect '/result?tuna=' + tuna +'&goldfish=' + goldfish + '&beans=' + beans +'&pepperoni=' + pepperoni + '&milk=' + milk + '&butter=' + butter + '&cheese=' + cheese + '&whip_topping=' + whip_topping
end


get '/result' do
   tuna = params[:tuna]
   goldfish = params[:goldfish]
   beans = params[:beans]
   pepperoni = params[:pepperoni] 
   milk = params[:milk]
   butter = params[:butter]
   cheese = params[:cheese]
   whip_topping = params[:whip_topping]
   erb :result, :locals => {:tuna => tuna, :goldfish => goldfish, :beans => beans, :pepperoni => pepperoni, :milk => milk, :butter => butter, :cheese => cheese, :whip_topping => whip_topping}
end







