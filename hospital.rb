class Admin
	attr_accessor :doct_name, :doct_id, :fees, :mobile_no

	def initialize(doct_name, doct_id, fees, mobile_no)
	    
	    
	    
		@doct_name=doct_name
		@doct_id=doct_id
		@fees=fees
		@mobile_no=mobile_no
	end
		
	def create_records(doct_name, doct_id, fees, mobile_no)
		
		ob = Admin.new(doct_name, doct_id, fees, mobile_no)
		$ls.append(ob)

		
	end

	def display(ob)
			print("\ndoct_id : ", ob.doct_id)
	      
	    
		
			print("\nName : ", ob.doct_name)
			
			
			print("\nfees : ", ob.fees)
			print("\nmobile_no : ", ob.mobile_no)
			print("\n")	

	end
	# Search Function
	def search(rn)
        for i in (0...$ls.length())
            if($ls[i].doct_id == rn)
                return i 
            end 
        end  
    end	
    def delete(rn)
        i = search(rn)  
        $ls.delete_at(i)
    end
      def update( rn, no)
        i = search(rn)
        new_fees = no
        $ls[i].fees = new_fees
      end
       
end
def admin_choice(n)
	

	if n==1
	$obj.create_records("lol", 6, 2000, 3841662546)

	
	elsif n==2
	print("\nList of all the doctor details\n")
	#print($ls)
	for i in (0...$ls.length())

    	$obj.display($ls[i])
    end
	elsif n==3
	print("\n Searching, ")
	s = $obj.search(2)
	$obj.display($ls[s])
	elsif n==4
	print("\n Deleting ")
	$obj.delete(2)
	
	#print($ls)
	else
	$obj.update(3, 200)
		
		
	end

end
class User
$monday = {
        "1"=> "10.00-1.00",
        "2"=>"1.10-4.10",
        "3"=>"4.20-7.20",
        "4"=>"7.30-10.30"
    }
$tuesday = {
        "1"=> "10.15-1.15",
        "2"=>"1.25-4.25",
        "3"=> "4.35-7.35",
        "4"=> "7.45-10.45"
    }
$wednesday = {
        "1": "10.30-1.30",
        "2": "1.40-4.40",
        "3": "4.50-7.50",
        "4": "8.00-10.45"
    }
$thursday = {
        "1": "10.30-1.30",
        "2": "1.40-4.40",
        "3": "4.50-7.50",
        "4": "8.00-10.45"
    }
$friday = {
        "1": "10.30-1.30",
        "2": "1.40-4.40",
        "3": "4.50-7.50",
        "4": "8.00-10.45"
    }
def booking(*args)
	n=args[0]
	p args
	if args.length == 1
    	print("\n Available slots")
    	if n==1
    		p $monday
    	elsif n=="2"

    		p $tuesday
    	elsif n=="3"
    		p $wednesday
    	elsif n=="4"
    		p $thursday
    	elsif n=="5"  
  			p $friday
  		end
  	else
  		del=args[1]
  		if n=="1"
    		p "Congratualations your slot has been booked between #{$monday.delete(del)}"
			

    	elsif n=="2"
    		p "Congratualations your slot has been booked between #{$tuesday.delete(del)}"

    		
    	elsif n=="3"
    		p "Congratualations your slot has been booked between #{$wednesday.delete(del)}"
    	elsif n=="4"
    		p "Congratualations your slot has been booked between #{$thursday.delete(del)}"
    	elsif n=="5"  
  			p "Congratualations your slot has been booked between #{$friday.delete(del)}"
  		p "thank you"
  		end

    end
end
end


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
		admin_choice(admin_option)
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
