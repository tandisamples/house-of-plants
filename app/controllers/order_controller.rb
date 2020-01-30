class OrderController < ApplicationController
  
  #RESTful routes
    # get, post, patch, delete  = http verb 
    
  get "/orders" do
    redirect_if_not_logged_in
    @orders = current_user.orders
    erb :"/orders/index"
  end

  # Create 
  
    # New 
    # make a post request to '/orders/new'
      get "/orders/new" do
        @items = Item.all 
        erb :"orders/new"
      end
    # Create 
    # make a post request to '/orders'
    
    post "/orders" do
      order = current_user.orders.build(item_ids: params[:item_id])
    if order.save
      flash[:message] = "You've created an order!"
      redirect "/orders/#{order.id}"
    else
      flash[:error] = order.errors.full_messages
      redirect "/orders/new"
      end
    end 
  
  #READ 
     # Index 
     # make a get request to /'orders'
    # delete the below 
    get '/orders' do
      erb :'orders/index'
    end
    
    # Show 
    # make a get request to '/orders/:id'
    get "/orders/:id" do
     redirect_if_not_logged_in
     @order = Order.find_by(id: params[:id])
     erb :"/orders/show"
    end
    
  # UPDATE 
      # Edit 
      # make a request to '/orders/:id/edit'
    get "/orders/:id/edit" do
      redirect_if_not_logged_in
      @order = Order.find_by(id: params[:id])
      @items = Item.all
      redirect_if_not_authorized
      erb :"/orders/edit"
    end
      
      
      # Update
      # make a patch request to /orders/:id'
      
    patch "/orders/:id" do
      redirect_if_not_logged_in
      @order = Order.find_by(id: params[:id])
      redirect_if_not_authorized
      if @order.update(item_ids: params[:item_id])
      flash[:message] = "You've edited your order."
      redirect to "/orders/#{@order.id}"
    end
      redirect to "/orders"
  end

      
  # DESTROY
      # make a delete request to '/orders/:id'
    delete "/orders/:id" do 
      redirect_if_not_logged_in
      @order = Order.find_by(id: params[:id])
      redirect_if_not_authorized
      @order.destroy 
      flash[:message] = "You've deleted your order."
      redirect "/orders"
    end
  end