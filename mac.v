`include "wallace16.v"
`include "36bitadder.v"
`include "dff.v"
module mac(a,b,c,clk,reset);
	input [15:0]a,b;
	input clk,reset;
	output [35:0] c;
	
	wire [35:0]c1,c2,c3,c4,c5,c6,c7,c8;
	
    wire ca,ca1,ca2,ca3;

		wallace16 w16(a,b,c1);
 
	dff d1(c1,clk,reset,c2);
	
	thirtysixbitadder thirty1(c2,c4,1'b0,c,ca);

	dff d2 (c,clk,reset,c4);
	
endmodule
