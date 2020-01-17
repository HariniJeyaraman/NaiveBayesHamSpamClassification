`include "fourBitAdder.v"

module sixteenBitAdder(A,B,cin,sum,ca);

input [15:0] A,B; input cin;
output [15:0] sum; output ca;
wire w1,w2,w3;

fourBitAdder fBA0(A[3:0],B[3:0],cin,sum[3:0],w1);
fourBitAdder fBA1(A[7:4],B[7:4],w1,sum[7:4],w2);
fourBitAdder fBA2(A[11:8],B[11:8],w2,sum[11:8],w3);
fourBitAdder fBA3(A[15:12],B[15:12],w3,sum[15:12],ca);

endmodule
