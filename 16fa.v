`include "8fa.v"
module sbit(a,b,cin,s,c);
input[15:0] a,b;
input cin;
output[15:0] s;
output c;
wire w0;
eightbit FA_0(a[7:0],b[7:0],cin,s[7:0],w0);
eightbit FA_1(a[15:8],b[15:8],w0,s[15:8],c);
endmodule
