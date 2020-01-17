`include "wallace.v"
`include "36bitadder.v"
module wallace16(a,b,c);
	input [15:0]a;
	input [15:0]b;
	output [35:0]c;
    wire [35:0]m1,m2,m3,m4,m5,m6;
 
    wire [15:0] e1;
    wire [23:8] e2;
    wire  [23:8] e3;
    wire [31:16] e4;
  
    wire ca1,ca2,ca3;

 
  
 wallace wallace1(a[7:0],b[7:0],e1);

wallace wallace3(a[15:8],b[7:0],e3);
 wallace wallace2(a[7:0],b[15:8],e2);
 
 wallace wallace4(a[15:8],b[15:8],e4);

 // always @(e1,e2,e3,e4) begin
 //  $display("e1=%b, a=%b,b=%b",e1,a[7:0],b[7:0]);
 //  $display("e2=%b,a=%b,b=%b",e2,a[15:8],b[15:8]);
 // $display("e3=%b,e4=%b",e3,e4);
 // end

 
   assign m1[35:16]=16'd0;
   assign m1[15:0]=e1;

   assign m2[7:0]=8'd0;
   assign m2[35:24]=8'd0;
   assign m2[23:8]=e2;

   assign m3[7:0]=8'd0;
   assign m3[35:24]=8'd0;
   assign m3[23:8]=e3;

   assign m4[15:0]=16'd0;
   assign m4[35:32]=4'd0;
   assign m4[31:16]=e4[31:16];


 
    // always @(*) begin

    //  $display("m4=%b ",m4);
    
    // end
 
 thirtysixbitadder thirty1(m1[35:0],m4[35:0],1'b0,m5[35:0],ca1);
  thirtysixbitadder thirty2(m3[35:0],m2[35:0],1'b0,m6[35:0],ca2);
  thirtysixbitadder thirty3(m5[35:0],m6[35:0],1'b0,c[35:0],ca3);
   // always @(c) begin

   //     $display("m1=%b,m2=%b,m3=%b,m4=%b,c=%b",m1,m2,m3,m4,c);
    
   //   end


endmodule
