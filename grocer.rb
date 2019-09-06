def consolidate_cart(cart)
  checkout = {}
  cart.each do |item|
    if checkout[item.key[0]]
      checkout[item.key[0]][:count] += 1
    else
      checkout[item.key[0]] = {
        count: 1,
        price: item.values[0][:price],
        clearance: item.values[0][:clearance]
      }
    end 
  end
  checkout
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
