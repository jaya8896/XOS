integer main()
{
	integer pid;
	print ("Before Fork");
	pid = Fork();
	//if(pid == -2) then
	//	print("child");
	//else
	//	print("parent");
	//endif;
	print(pid);
	print("After fork");		
	return 0;
}
