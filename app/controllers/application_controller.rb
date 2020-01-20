require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enable :sessions 
    #set :session_secret, "secret"
  end

  get "/" do
    erb :welcome
  end
  
  get '/users/signup' do
    erb :'/users/signup'
  end
  
  post '/users' do 
    @user = User.new(name: params["name"], email: params["email"], password: params["password"])
    @user.save
    session[:user_id] = @user.user_id
    
    puts params
    redirect 
  end
  
  get '/users/login' do 
    erb :'/users/login'
  end
  
  post '/users' do 
    @user = User.find_by(email: params[:email], password: params[:pasword])
    if @user 
      session[:user_id] = @user.id 
      redirect '/users/welcome'
    end
    redirect '/users/login'
  end
  
  
    
  
  


end
