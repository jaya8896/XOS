integer main(){
	integer i,status,status1,j,k;
	i = Getpid();
	print(i);
	status = Fork();
	//print(status);
	//print("status were given");
	if(status == -2) then
		i = 11;
		while(i<20) do
			print(i);
			if(i==15) then
				k = Signal();
			endif;
			i = i + 1;
		endwhile;	
	else
		i = 1;
		
		while(i<7) do
			//print("parent");		
			print(i);
			if(i==2) then
				//print(status);
				j=Wait(status);			
			endif;
			i = i + 1;
		endwhile;	
	endif;
	return 0;
}
