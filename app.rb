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

post '/collect' do
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
   total = params[:total]
   total_all = params[:total_all]
   tuna = params[:tuna]
   goldfish = params[:goldfish]
   beans = params[:beans]
   pepperoni = params[:pepperoni] 
   milk = params[:milk]
   butter = params[:butter]
   cheese = params[:cheese]
   whip_topping = params[:whip_topping]
   erb :result, :locals => {:total => total, :total_all => total_all, :tuna => tuna, :goldfish => goldfish, :beans => beans, :pepperoni => pepperoni, :milk => milk, :butter => butter, :cheese => cheese, :whip_topping => whip_topping}
end

post '/payment' do
   amount = params[:amount]
   total = params[:total]
   total_all = params[:total_all]
   tuna = params[:tuna]
   goldfish = params[:goldfish]
   beans = params[:beans]
   pepperoni = params[:pepperoni]
   milk = params[:milk]
   butter = params[:butter]
   cheese = params[:cheese]
   whip_topping = params[:whip_topping]
   redirect '/change?amount=' + amount + '&total=' + total + '&total_all=' + total_all +'&tuna=' + tuna + '&goldfish=' + goldfish + '&beans=' + beans +'&pepperoni=' + pepperoni + '&milk=' + milk + '&butter=' + butter + '&cheese=' + cheese + '&whip_topping=' + whip_topping
end

get '/change' do
   amount = params[:amount]
   change = params[:change]
   total = params[:total]
   total_all = params[:total_all]
   tuna = params[:tuna]
   goldfish = params[:goldfish]
   beans = params[:beans]
   pepperoni = params[:pepperoni] 
   milk = params[:milk]
   butter = params[:butter]
   cheese = params[:cheese]
   whip_topping = params[:whip_topping]
   erb :change, :locals => {:amount => amount, :change => change, :total => total, :total_all => total_all, :tuna => tuna, :goldfish => goldfish, :beans => beans, :pepperoni => pepperoni, :milk => milk, :butter => butter, :cheese => cheese, :whip_topping => whip_topping}
end
