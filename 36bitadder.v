`include "thirtytwoBitAdder.v"
//`include "fourBitAdder.v"
module thirtysixbitadder(a,b,cin,sum,ca);


input [35:0] a,b; input cin;
output [35:0] sum; output ca;
wire w1;

thirtytwoBitAdder th_0(a[31:0],b[31:0],1'b0,sum[31:0],w1);
fourBitAdder th_1(a[35:32],b[35:32],w1,sum[35:32],ca);


    // always @(*) begin

    //   $display("sum=%b ",sum);
    
    //  end

endmodule