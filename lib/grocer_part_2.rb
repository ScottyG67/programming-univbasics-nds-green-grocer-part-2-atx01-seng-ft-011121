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

    saving=coupons.find {|coupon| line_item[:item]==coupon[:item]}
    if saving == nil
      binding.pry
    end
    binding.pry
    if line_item[:count] % saving[:num] == 0

      coupon_item=line_item.clone
      coupon_item[:item] = coupon_item[:item] + " W/COUPON"
      coupon_item[:price] = saving[:cost]/saving[:num]
      line_item[:count]=0
      cart << coupon_item

      elsif line_item[:count] > saving[:num]

      coupon_item=line_item.clone
      coupon_item[:item] = coupon_item[:item] + " W/COUPON"
      coupon_item[:price] = saving[:cost]/saving[:num]

      coupon_item[:count]=line_item[:count]/saving[:num]*saving[:num]

      line_item[:count]=line_item[count]-coupon_item[:cout]
      cart << coupon_item

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
