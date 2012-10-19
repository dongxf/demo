#encoding:utf-8
class StoreController < ApplicationController
  def index
    #jsd_counter 进入商店的次数
    session[:jsd_counter].nil? ? session[:jsd_counter]=1 : session[:jsd_counter]+=1 ;
    @jsd_counter = session[:jsd_counter]
    @cart = current_cart
    @products = Product.all
  end
end
