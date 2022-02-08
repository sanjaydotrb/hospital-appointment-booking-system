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
  		    
  		end
                p "thank you"

    end
end
end