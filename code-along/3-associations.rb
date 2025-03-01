# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
puts "Contacts: #{Contact.all.count}"

# 1. insert new rows in the contacts table with relationship to a company

apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

puts contact = Contact.new
contact["first name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "tim.cook@apple.com"
contact["company_id"] = apple["id"]
contact.save
puts contact.inspect

puts "Contacts: #{Contact.all.count}"

# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"company_id" = > apple("id")})
puts "Apple employees: #{apple_contact.count}"

# 3. What is the full name of each contact who works at Apple?
