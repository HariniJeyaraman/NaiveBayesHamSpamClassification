`include "fullAdder.v"

module fourBitAdder(A,B,cin,sum,ca);

input [3:0] A,B; input cin;
output [3:0] sum; output ca;
wire w1,w2,w3;

FullAdder FA0(A[0],B[0],cin,sum[0],w1);
FullAdder FA1(A[1],B[1],w1,sum[1],w2);
FullAdder FA2(A[2],B[2],w2,sum[2],w3);
FullAdder FA3(A[3],B[3],w3,sum[3],ca);

endmodule
