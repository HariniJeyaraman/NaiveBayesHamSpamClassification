module FullAdder(a,b,c,sum,ca);

input a,b,c;
output sum,ca;

	assign sum = a^b^c;
	assign ca = (a&b) | (b&c) | (c&a);
endmodule
