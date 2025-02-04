# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Salesperson.all.count} sales associates"

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new

puts new_salesperson.inspect

new_salesperson["first_name"] = "Caitlin"
new_salesperson["last_name"] = "Lehman"
new_salesperson["email"] = "lehman.caitlin2015@gmail.com"
new_salesperson["phone"] = "914-629-8301"

new_salesperson.save

puts new_salesperson.inspect
puts "There are #{Salesperson.all.count} sales associates"

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Brittany"
new_salesperson["last_name"] = "Lehman"
new_salesperson["email"] = "brittany.lehman10@gmail.com"
new_salesperson["phone"] = "914-629-8076"

new_salesperson.save

puts new_salesperson.inspect
puts "There are #{Salesperson.all.count} sales associates"


# 3. write code to display how many salespeople rows are in the database

puts "Sales associates: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

Caitlin = Salesperson.find_by({"first_name" => "Caitlin"})
puts Caitlin.inspect

Caitlin["email"] = "caitlin.lehman2016@gmail.com"
Caitlin.save
puts Caitlin.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name

salespeople = Salesperson.all

for person in salespeople
first_name = person["first_name"]
last_name = person["last_name"]
name = "#{first_name} #{last_name}"
puts name
end 

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
