`include "16fa.v"
module top;
reg[15:0] a,b;
reg cin;
reg w0,w1;
wire[15:0] s;
wire c;

sbit FA_0(a,b,cin,s,c);

initial
 begin
	//cin=0;
	// a='b1111000001010000;
	// b='b0000101010010101;
	// #5 b='b1111000111100001;
	// #5 b='b1101110000011010;	
	//a='d123;
	//b='d224;
	//#20 a= 'd110;
	//#20 b = 'd119;
	if($value$plusargs("x=%d",a));
	if($value$plusargs("y=%d",b));
	if($value$plusargs("c=%d",cin));
 end

//initial
 //begin
//	$dumpfile("sbit.vcd");
//	$dumpvars;
 //end

initial
 begin
	$monitor("%d",s);
 end

endmodule
