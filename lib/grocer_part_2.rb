require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  require 'pry'
  cart_w_coupon=[]
  remainder_item={}
  coupon_item={}
  #binding.pry
  cart.each do |item|
    coupons.each do |coupon|
      #binding.pry
      if item[:item]==coupon[:item] and item[:count]>=coupon[:num]
        price = (coupon[:cost]/coupon[:num]).round(2)
        if item[:count]==coupon[:num]
          item.each{|a,v| coupon_item_item[a] = item[a]}
          coupon_item[:item] = item[:item] + " W/COUPON"
          coupon_item[:price]=price
          cart << coupon_item
        elsif item[:count]>coupon[:num]
          item.each {|a,v| remainder_item[a] = item[a]}
          remainder_item[:count] = item[:count]-coupon[:num]
          cart_w_coupon << remainder_item
          item[:price]=price
          item[:count]=coupon[:num]
          cart_w_coupon << item
          #binding.pry
        else
          cart_w_coupon << item
          #binding.pry
        end
      end
    end
    binding.pry
    #cart_w_coupon
    cart
  end
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
