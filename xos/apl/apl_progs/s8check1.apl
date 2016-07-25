integer main(){
	integer  steven,stodd,integer;
	stodd = Create("a.dat");
	steven = Create("b.dat");
	if(stodd != -1 && steven != -1) then
		stodd  = Open("a.dat");
		steven = Open("b.dat");
	else
		return 0;
	endif;
	
	
}
