`include "fa.v"
module fourbit(a,b,cin,s,c);
input[3:0] a,b;
input cin;
output[3:0] s;
output c;
wire w0,w1,w2;
full FA_0(a[0],b[0],cin,s[0],w0);
full FA_1(a[1],b[1],w0,s[1],w1);
full FA_2(a[2],b[2],w1,s[2],w2);
full FA_3(a[3],b[3],w2,s[3],c);
endmodule
