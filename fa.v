module full(a,b,cin,s,c);
input a,b,cin;
output s,c;
wire w0,w1,w2;
assign w0= a^b;
assign s = w0^cin;
assign w1 = a&b;
assign w2 = w0&cin;
assign c = w1|w2;

//assign s=(a^b^c);
//assign c=((a&b)|(a&cin)|(b&cin));
endmodule
