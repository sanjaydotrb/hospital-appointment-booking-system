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
		print("\n Searching, \n")
		s = $obj.search(2)
		$obj.display($ls[s])
	elsif n==4
		print("\n Deleting \n")
		$obj.delete(2)
	
	#print($ls)
	else
		$obj.update(3, 200)
		
		
	end

end

       
end