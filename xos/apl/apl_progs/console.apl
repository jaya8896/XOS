integer main()
{
	integer status,cstat,wstat;
	string program;
	while(1 == 1) do
		print("**********");
		print(">");
		read(program);	
		status = Fork();
		if (status == -2) then
			cstat = Exec(program);
			if(cstat == -1) then
				print("Failed to Run");
				cstat = Signal();
				break;
			endif;
		else 
			if(status == -1) then
				print("Error");	
			else
				wstat = Wait(status);
			endif;
		endif;
	endwhile;
	return 0;
}

