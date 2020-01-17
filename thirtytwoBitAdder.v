`include "sixteenBitAdder.v"

module thirtytwoBitAdder(A,B,cin,sum,ca);

input [31:0] A,B; input cin;
output [31:0] sum; output ca;
wire w1;

sixteenBitAdder sBA0(A[15:0],B[15:0],cin,sum[15:0],w1);
sixteenBitAdder sBA1(A[31:16],B[31:16],w1,sum[31:16],ca);

endmodule
