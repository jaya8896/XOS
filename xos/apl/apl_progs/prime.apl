decl
integer prime(integer n);
enddecl
integer prime(integer n)
{
	integer f,ret;
	f = 2;
	while (f < n) do
		if(n%f == 0) then
			break;
		endif;
		f = f + 1;
	endwhile;
	if(f == n) then
		ret = 1;
	else
		ret = 0;
	endif;
	return ret;
}
integer main()
{
	integer n,i,check;
	read(n);
	i = 2;
	while(i <= n) do
		check = prime(i);
		if (check == 1) then
			print(i);
		endif;
		i = i + 1;
	endwhile;
	return 0;
}
