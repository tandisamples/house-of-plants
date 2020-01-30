class ItemController < ApplicationController

# Get: /items 
  get "/items" do 
    @items = Item.all 
    erb :"/items/index"
  end 
end
