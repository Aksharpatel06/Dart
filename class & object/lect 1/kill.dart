int pass1()
{
	int gun1 = 30;
	return gun1;
}
int pass2()
{
	int gun2 = 30; 
	return gun2;
}
int pass3()
{
	int gun3 = 30; 
	return gun3;
}
int delar(int pass1, int pass2, int pass3)
{
	int delar = pass1 + pass2 + pass3; 
	return delar;
}
int rockey()
{
	int rockey = 10 + delar(pass1(),pass2(),pass3());
	return rockey;
	
}
main()
{
	print(rockey());
}