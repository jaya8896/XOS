integer main()
{
	integer steven,stodd,i,stwrite,stmerge;
	integer readw,stread;	
	i = 1;
	stodd = Create("a.dat");	//File for odd integers
	steven = Create("b.dat");	//FIle for even integers
	if(stodd != -1 && steven != -1) then		//Files successfully created
		stodd = Open("a.dat");			//FileDescriptor of odd file
		steven = Open("b.dat");			//FileDescriptor of even file
		if(stodd != -1 && steven != -1) then	//Files successfully Opened
			i = 1;			
			while(i <= 5000) do
				if(i%2 == 1) then
					stwrite = Write(stodd,i);
				else
					stwrite = Write(steven,i);
				endif;
				if(stwrite == -1) then
					//print("write-error");
					stodd = Close(stodd);
					steven = Close(steven);
					//return 0;
				endif;
				i = i+1;			
			endwhile;
			stodd = Close(stodd);
			steven = Close(steven);
			stmerge = Create("c.dat");
			stmerge = Open("c.dat");
			stodd = Open("a.dat");
			steven = Open("b.dat");
			i = 0;
			while(i < 2500) do
				stread	= Read(stodd,readw);
				if(stread != -1) then
					stwrite = Write(stmerge,readw);
				endif;
				stread	= Read(steven,readw);
				if(stread != -1) then
					stwrite = Write(stmerge,readw);
				endif;
				i = i+1;
			endwhile;
			stodd = Close(stodd);
			steven = Close(steven);
			stmerge = Close(stmerge);
			stodd = Delete("a.dat");
			steven = Delete("b.dat");			
		endif;
	endif;
	return 0;	
}
