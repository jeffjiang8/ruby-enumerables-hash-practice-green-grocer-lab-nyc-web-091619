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
  cart.each do |coupon|
    if cart.key.include? coupon[:item]
      if cart[coupon[:item][:count]] >= count[:num]
        dicounted = "#{[coupon[:item]]} W/ COUPON"
        if cart[discounted]
          cart[discounted][:count] += [coupon[:item]]
        else
          cart[dicounted] = {
            :count => 
          }

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
