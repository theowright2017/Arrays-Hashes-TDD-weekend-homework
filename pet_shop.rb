def pet_shop_name(hash_name)
  return hash_name[:name]
end


def total_cash(hash_name)
  return hash_name[:admin][:total_cash]
end


def add_or_remove_cash(the_store, amount)
  return the_store[:admin][:total_cash] += amount
end


def pets_sold(the_store)
  return the_store[:admin][:pets_sold]
end


def increase_pets_sold(the_store, number_sold)
  return the_store[:admin][:pets_sold] += number_sold
end


def stock_count(the_store)
  return the_store[:pets].length
end

def pets_by_breed(the_store, breed_type)
  found_pets = []
  for pet in the_store[:pets]
    if pet[:breed] == breed_type
      found_pets.push(1)
    end
  end
  return found_pets
end


def find_pet_by_name(the_store, pet_name)
  for pet in the_store[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end


def remove_pet_by_name(the_store, pet_name)
  for pet in the_store[:pets]
    if pet[:name] == pet_name
      the_store[:pets].delete(pet)
      return nil
    end
  end
end


def add_pet_to_stock(store, new_pet)
  store[:pets].push(new_pet)
end


def customer_cash(customer)
  return customer[:cash]
end


def remove_customer_cash(customer, amount)
  for person in customer
    total_cash =  customer[:cash] -= amount
      return total_cash
  end
end


def customer_pet_count(customer)
  return customer[:pets].count
end


def add_pet_to_customer(customer, new_pet)
  customer[:pets] = [new_pet]
  def customer_pet_count(customer)
    return customer[:pets].count
  end
end
#### go through and translate each line, why does cust:pets work???  why no if statement for matching cust input, etc



#####optional


def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= 100
    return true
  else
    return false
  end
end




# def sell_pet_to_customer(store, pet, customer)



  # def customer_pet_count(customer)
  #   return customer[:pets].count
  # end
  #
  # def pets_sold(store)
  #   return store[:admin][:pets_sold]
  # end
  #
  # def customer_cash(customer)
  #   return customer[:cash]
  # end
  #
  # def total_cash(store)
  #   return store[:admin][:total_cash]
  # end

# end








####
