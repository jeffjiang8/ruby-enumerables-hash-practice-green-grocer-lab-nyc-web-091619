def consolidate_cart(cart)
  check_out = {}
  cart.each do |item|
    if check_out[item.keys[0]]
      check_out[item.keys[0]][:count] += 1
    else
      check_out[item.keys[0]] = {
        :count => 1,
        :price => item.values[0][:price],
        :clearance => item.values[0][:clearance]
      }
    end 
  end
  check_out
end

def apply_coupons(cart, coupons)
  # code here
  coupons.each do |coupon|
    if cart.key.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        dicounted = "#{coupon[:item]} W/COUPON"
        if cart[discounted]
          cart[discounted][:count] += coupon[:num]
        else
          cart[dicounted] = {
            :count => coupon[:num],
            :price => coupon[:cost] / coupon[:num],
            :clearance => cart[coupon[:item]][:clearance]
          }
        end
        cart[coupon[:item]][:count] -= coupon[:num]
      end 
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
  cart.keys.each do |item|
    if cart[item][:clearance]
      cart[item][:price] = (cart[item][:price]*0.80).round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # code here
end
