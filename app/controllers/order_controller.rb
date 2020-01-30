class OrderController < ApplicationController
  
  #RESTful routes
    # get, post, patch, delete  = http verb 
  
  # Create 
  
    # New 
    # make a post request to '/orders/new'
    
    # Create 
    # make a post request to '/orders'
  
  #READ 
     # Index 
     # make a get request to /'orders'
    
    get '/orders' do
      erb :'orders/index'
    end
    
    # Show 
    # make a get request to '/orders/:id'
    
  # UPDATE 
      # Edit 
      # make a request to '/orders/:id/edit'
      
      # Update
      # make a patch request to /orders/:id'
      
  # DESTROY
      # make a delete request to '/orders/:id'
  
end