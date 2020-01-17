`include "ffa.v"
module eightbit(a,b,cin,s,c);
input[7:0] a,b;
input cin;
output[7:0] s;
output c;
wire w0,w1;
fourbit FA_0(a[3:0],b[3:0],cin,s[3:0],w0);
fourbit FA_1(a[7:4],b[7:4],w0,s[7:4],c);
endmodule
