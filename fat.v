`include "fa.v"
module top;
reg a,b,cin;
wire s,c;
full FA_O(a,b,cin,s,c);

initial
begin
	a=0;b=0;cin=0;
	#5 a=1;
	#5 cin=1;
	#5 b=1;
	#5 cin=0;
	#5 a=0;
	#5 cin=1;
	#5 b = 0;
	
end

initial
 begin
	$dumpfile("full.vcd");
	$dumpvars;
 end

initial 
begin
 $monitor($time ,"a=%b;b=%b;cin=%b;s=%b;c=%b" ,a,b,cin,s,c);
end

endmodule

