`include "8fa.v"
module top;
reg[7:0] a,b;
reg cin;
reg w0,w1;
wire[7:0] s;
wire c;

eightbit FA_0(a,b,cin,s,c);

initial
 begin
	cin=0;
	// a='b11110000;
	// b='b00001010;
	// #5 b='b11110001;
	// #5 b='b11011100;
	a='d236;
	b='d34;
	#20 a='d99;
	#20 b='d67;
 end

initial
 begin
	$dumpfile("eightbit.vcd");
	$dumpvars;
 end

initial
 begin
	$monitor($time ,"a=%d;b=%d;cin=%d;s=%d;c=%d",a,b,cin,s,c);
 end

endmodule
