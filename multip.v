`include "wallace16.v"
module top;
reg[15:0] X,Y;
wire Z [35:0];


wallace16 b_1(X,Y,Z);

initial
	begin 
		//if($value$plusargs("X=%b",X));
		//if($value$plusargs("Y=%b",Y));
		X='b101
		Y='b10
		
end

initial
	begin
		$monitor($time," X=%d, Y=%d, Z=%d ",X,Y,Z);
	end
endmodule

