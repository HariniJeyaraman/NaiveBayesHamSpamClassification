`include "wallace16.v"
module top;
reg [15:0]a,b;
wire [35:0] c;
wallace16 W_0(a,b,c);
initial
 begin
   if($value$plusargs("a=%d",a));
   if($value$plusargs("b=%d",b));
end


initial
 begin
	$monitor("%d",c);
 end

endmodule 

