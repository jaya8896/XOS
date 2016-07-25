integer main(){
	print("before exec call");
	integer status;
	status = Exec("odd.xsm");
	print(status);
	print("after exec call");
	return 0;
}
