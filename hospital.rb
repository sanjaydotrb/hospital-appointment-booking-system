require "./admin.rb"
require "./user.rb"
p " welcome to hospital booking System"
p("-----------------------------------------")
print(" Enter 1 for Admin  \n Enter 2 for user  \n  ")
option=gets.to_i
$ls =[]
$obj = Admin.new('', 0, 0, 0)
$obj.create_records("sanjay", 1, 1000, 9841662546)
$obj.create_records("sam", 2, 800, 9841667546)
$obj.create_records("ram", 3, 7000, 9811662546)
$obj.create_records("san", 4, 6000, 1841662546)
$obj.create_records("ross", 5,7000, 6841662546)
if option == 1
	
	while true
	
	print("You have entered the admin panel")
	print("\n Choose your option")
	print("\n 1. Insert/create a new doctor detail")
	print("\n 2. Homepage: Details of all the doctors")
	print("\n 3. Search and display the doctor detail")
	print("\n 4. Delete a doctor record")
	print("\n 5. To edit a doctor details")
	print("\n 0. To exit\n")
	
	admin_option=gets.to_i
	if admin_option==0
		break
	else
		ob=Admin.new('', 0, 0, 0)
		ob.admin_choice(admin_option)
	end

	end
else
	print("\n Welcome to User Homepage")


	for i in (0...$ls.length())

    		$obj.display($ls[i])
    	end
    	print("\n Select a doctor id who u want to book ")
    	n=gets.to_i
    	s = $obj.search(n)
	$obj.display($ls[s])
	print("\n Enter day in digit(i.e monday-1,tuesday-2 ) to check availabilty\n")
	day=gets.chomp
	user_object=User.new
	user_object.booking(day)

	print("\n enter a slot number to book your appointment")
	appointment=gets.chomp
	
	user_object.booking(day,appointment)






end
