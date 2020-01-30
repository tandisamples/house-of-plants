class UserController < ApplicationController
  
  # GET 
  # signup new user 
  get "/signup" do 
    if logged_in?
      redirect to "/items"
  end
  erb :"/users/signup"
end 

  # POST
  # signed up user saved 
  post "/signup" do 
    user = User.new(params)
    if user.save 
      session[:user_id] = user.id 
      flash[:message] = "You've created a plant account."
      redirect to "/orders"
    else
      flash[:error] = user.errors.full_messages
      redirect to "/signup"
    end
  end

  
end