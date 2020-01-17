`include "mac.v"

module top;

reg [15:0]a,b;
reg clk,reset;
wire [35:0]c;
//reg [3:0]q,q1;


mac m1(a,b,c,clk,reset);

//initial
// begin a=16'b1111111100000011;b=16'b1111111101011010;
//  end

initial
begin
reset=1;
clk =0;

end

always 
#5  clk =  ! clk; 
 
initial begin
a=16'd0;b=16'd0;
#10 reset=0;
#10  a=16'd12; b=16'd20;
#10  a=16'd20; b=16'd10;
#10 a=16'd16;b=16'd20;

end
initial
begin
	$monitor($time , "a = %d, b = %d, c= %d, ",a,b,c);

	$dumpfile("mac.vcd");
	$dumpvars;
end

initial

	#50 $finish;
endmodule
