`include "ffa.v"
module top;
reg[3:0] a,b;
reg cin;
reg w0,w1,w2;
wire[3:0] s;
wire c;

fourbit FA_0(a,b,cin,s,c);

initial
 begin
	cin=0;
	a='b0000;
	b='b0000;
	#20 b='b1111;
	#20 b='b1101;	
	#20 a='b0110;
	#20 b='b1001;
	#20 b='b0010;
 end

initial
 begin
	$dumpfile("fourbit.vcd");
	$dumpvars;
 end

initial
 begin
	$monitor($time ,"a=%b;b=%b;cin=%b;s=%b;c=%b",a,b,cin,s,c);
 end

endmodule
