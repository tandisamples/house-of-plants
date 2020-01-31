require './config/environment'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    register Sinatra::Flash
    set :session_secret, "secret"
  end

  get "/" do
    erb :welcome
  end
  
  helpers do 
    def current_user
      @user ||= User.find_by_id(session[:user_id])
    end 
    
    def logged_in?
      !!current_user
    end 
    
    def redirect_if_not_logged_in
      redirect to "/login" unless logged_in?  
    end
    
    def redirect_if_not_logged_in
      if @order.user !=current_user
      #  flash[:message] = "You cannot edit this order"
        redirect to "/orders"
    end
  end
 end 
end
