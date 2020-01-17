`include "halfadder.v"

module top;
reg x,y;
wire s,c;
half HA_O(x,y,s,c);

initial
	begin
		//x=0;
		//y=0;
		//#5 x=1;
		//#5 y=1;
		//#5 x=0;
		if($value$plusargs("x=%b",x));
		if($value$plusargs("y=%b",y));

	end
//initial
//	begin
//	$dumpfile("halfadder.vcd");
//	$dumpvars;
//end

initial
$monitor("s=%b , c=%b",s,c);

endmodule
