require_relative 'ar'

# select count(*) from customers
number_of_customers = Customer.count

# puts number_of_customers

#get all customers
all_customers = Customer.all

# puts all_customers

all_customers.each do |customer|
  # puts customer.name
end

twenty_customers  = Customer.limit(20)
# puts twenty_customers;

twenty_customers.each do |customer|
  #puts customer.name
end

#puts  all_customers.inspect

#puts Customer.new.inspect

# SELECT * from customer WHERE city = 'Winnipeg'
winnipeggers = Customer.where(city: 'Winnipeg')

#puts "THere are #{winnipeggers.size} Winnipegs in the customers tables"

#SELECT * from customer where name like "m%"
m_names = Customer.where('name like "m%"')

m_names.each do |name|
  puts name.name
end

f_names = Customer.where("name LIKE ?", "f%")

f_names.each do | f_name |
  puts f_name.email
end
