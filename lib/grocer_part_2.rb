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
  if coupons == []
    binding.pry
  end
  cart.each do |line_item|
    #find matching coupons
    saving=coupons.find {|coupon| line_item[:item]==coupon[:item]}
    #binding.pry
    #if cart meets number requirement for coupon
    if line_item[:count] % saving[:num] == 0
      #update line_item count = 0
      #add new hash to cart with :item + "W/COUPON" and new per unit price
      coupon_item=line_item.clone
      coupon_item[:item] = coupon_item[:item] + " W/COUPON"
      coupon_item[:price] = saving[:cost]/saving[:num]
      line_item[:count]=0
      cart << coupon_item
      #binding.pry
      elsif line_item[:count] > saving[:num]
      #update line_item count = count - num
      #add new hash to cart with :item + "W/COUPON" and new per unit price and num
      #note: Need to add case when count is more than 2X num but not even multiple
      coupon_item=line_item.clone
      coupon_item[:item] = coupon_item[:item] + " W/COUPON"
      coupon_item[:price] = saving[:cost]/saving[:num]
      #binding.pry
      coupon_item[:count]=line_item[:count]/saving[:num]*saving[:num]
      #binding.pry
      line_item[:count]=line_item[count]-coupon_item[:cout]
      cart << coupon_item
      #binding.pry
    end
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
