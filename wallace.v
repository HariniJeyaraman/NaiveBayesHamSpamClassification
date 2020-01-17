//`include "fullAdder.v"
`include "cla.v"
module wallace(a,b,m);
	input [7:0]a;
	
	input [7:0]b;
	output [15:0]m;
	wire [15:0]m1,m2,m3,m4,m5,m6,m7,m8,s1,c1,s2,c2,s3,c3,s4,c4,s5,c5,s6,c6;

	assign m1[0]=a[0]&b[0];
	assign m1[1]=a[1]&b[0];
	assign m1[2]=a[2]&b[0];
	assign m1[3]=a[3]&b[0];
	assign m1[4]=a[4]&b[0];
	assign m1[5]=a[5]&b[0];
	assign m1[6]=a[6]&b[0];
	assign m1[7]=a[7]&b[0];
	
	assign m1[8]=0,m1[9]=0,m1[10]=0,m1[11]=0,m1[12]=0,m1[13]=0,m1[14]=0,m1[15]=0;

	

	assign m2[1]=a[0]&b[1];
	assign m2[2]=a[1]&b[1];
	assign m2[3]=a[2]&b[1];
	assign m2[4]=a[3]&b[1];
	assign m2[5]=a[4]&b[1];
	assign m2[6]=a[5]&b[1];
	assign m2[7]=a[6]&b[1];
	assign m2[8]=a[7]&b[1];

     assign m2[0]=0,m2[9]=0,m2[10]=0,m2[11]=0,m2[12]=0,m2[13]=0,m2[14]=0,m2[15]=0;
	

	assign m3[2]=a[0]&b[2];
	assign m3[3]=a[1]&b[2];
	assign m3[4]=a[2]&b[2];
	assign m3[5]=a[3]&b[2];
	assign m3[6]=a[4]&b[2];
	assign m3[7]=a[5]&b[2];
	assign m3[8]=a[6]&b[2];
	assign m3[9]=a[7]&b[2];
	
	assign m3[0]=0,m3[1]=0,m3[10]=0,m3[11]=0,m3[12]=0,m3[13]=0,m3[14]=0,m3[15]=0;
	

	assign m4[3]=a[0]&b[3];
	assign m4[4]=a[1]&b[3];
	assign m4[5]=a[2]&b[3];
	assign m4[6]=a[3]&b[3];
	assign m4[7]=a[4]&b[3];
	assign m4[8]=a[5]&b[3];
	assign m4[9]=a[6]&b[3];
	assign m4[10]=a[7]&b[3];
	
	assign m4[0]=0,m4[1]=0,m4[2]=0,m4[11]=0,m4[12]=0,m4[13]=0,m4[14]=0,m4[15]=0;
	

	assign m5[4]=a[0]&b[4];
	assign m5[5]=a[1]&b[4];
	assign m5[6]=a[2]&b[4];
	assign m5[7]=a[3]&b[4];
	assign m5[8]=a[4]&b[4];
	assign m5[9]=a[5]&b[4];
	assign m5[10]=a[6]&b[4];
	assign m5[11]=a[7]&b[4];
	
	assign m5[0]=0,m5[1]=0,m5[2]=0,m5[3]=0,m5[12]=0,m5[13]=0,m5[14]=0,m5[15]=0;
  

	assign m6[5]=a[0]&b[5];
	assign m6[6]=a[1]&b[5];
	assign m6[7]=a[2]&b[5];
	assign m6[8]=a[3]&b[5];
	assign m6[9]=a[4]&b[5];
	assign m6[10]=a[5]&b[5];
	assign m6[11]=a[6]&b[5];
	assign m6[12]=a[7]&b[5];
	
	 assign m6[1]=0,m6[2]=0,m6[3]=0,m6[4]=0,m6[0]=0,m6[13]=0,m6[14]=0,m6[15]=0;
    
	assign m7[6]=a[0]&b[6];
	assign m7[7]=a[1]&b[6];
	assign m7[8]=a[2]&b[6];
	assign m7[9]=a[3]&b[6];
	assign m7[10]=a[4]&b[6];
	assign m7[11]=a[5]&b[6];
	assign m7[12]=a[6]&b[6];
	assign m7[13]=a[7]&b[6];
	
	 assign m7[0]=0,m7[1]=0,m7[2]=0,m7[3]=0,m7[4]=0,m7[5]=0,m7[14]=0,m7[15]=0;
    
	assign m8[7]=a[0]&b[7];
	assign m8[8]=a[1]&b[7];
	assign m8[9]=a[2]&b[7];
	assign m8[10]=a[3]&b[7];
	assign m8[11]=a[4]&b[7];
	assign m8[12]=a[5]&b[7];
	assign m8[13]=a[6]&b[7];
	assign m8[14]=a[7]&b[7];

	
	assign m8[0]=0,m8[1]=0,m8[2]=0,m8[3]=0,m8[4]=0,m8[5]=0,m8[6]=0,m8[15]=0;




	FullAdder fa1(m1[0],m2[0],m3[0],s1[0],c1[1]);
	FullAdder fa2(m1[1],m2[1],m3[1],s1[1],c1[2]);
	FullAdder fa3(m1[2],m2[2],m3[2],s1[2],c1[3]);
	FullAdder fa4(m1[3],m2[3],m3[3],s1[3],c1[4]);
	FullAdder fa5(m1[4],m2[4],m3[4],s1[4],c1[5]);
	FullAdder fa6(m1[5],m2[5],m3[5],s1[5],c1[6]);
	FullAdder fa7(m1[6],m2[6],m3[6],s1[6],c1[7]);
	FullAdder fa8(m1[7],m2[7],m3[7],s1[7],c1[8]);
	FullAdder fa9(m1[8],m2[8],m3[8],s1[8],c1[9]);
	FullAdder fa10(m1[9],m2[9],m3[9],s1[9],c1[10]);
	
     assign s1[10]=0,s1[11]=0,s1[12]=0,s1[13]=0,s1[14]=0,s1[15]=0;
	 assign c1[0]=0,c1[11]=0,c1[12]=0,c1[13]=0,c1[14]=0,c1[15]=0;
 


    FullAdder fa11(m4[3],m5[3],m6[3],s2[3],c2[4]);
	FullAdder fa12(m4[4],m5[4],m6[4],s2[4],c2[5]);
	FullAdder fa13(m4[5],m5[5],m6[5],s2[5],c2[6]);
	FullAdder fa14(m4[6],m5[6],m6[6],s2[6],c2[7]);
	FullAdder fa15(m4[7],m5[7],m6[7],s2[7],c2[8]);
	FullAdder fa16(m4[8],m5[8],m6[8],s2[8],c2[9]);
	FullAdder fa17(m4[9],m5[9],m6[9],s2[9],c2[10]);
	FullAdder fa18(m4[10],m5[10],m6[10],s2[10],c2[11]);
	FullAdder fa19(m4[11],m5[11],m6[11],s2[11],c2[12]);
	FullAdder fa20(m4[12],m5[12],m6[12],s2[12],c2[13]);
	
	 assign s2[0]=0,s2[1]=0,s2[2]=0,s2[13]=0,s2[14]=0,s2[15]=0;
	 assign c2[0]=0,c2[1]=0,c2[2]=0,c2[3]=0,c2[14]=0,c2[15]=0;
	

	FullAdder fa21(s1[0],c1[0],s2[0],s3[0],c3[1]);
	FullAdder fa22(s1[1],c1[1],s2[1],s3[1],c3[2]);
	FullAdder fa23(s1[2],c1[2],s2[2],s3[2],c3[3]);
	FullAdder fa24(s1[3],c1[3],s2[3],s3[3],c3[4]);
	FullAdder fa25(s1[4],c1[4],s2[4],s3[4],c3[5]);
	FullAdder fa26(s1[5],c1[5],s2[5],s3[5],c3[6]);
	FullAdder fa27(s1[6],c1[6],s2[6],s3[6],c3[7]);
	FullAdder fa28(s1[7],c1[7],s2[7],s3[7],c3[8]);
	FullAdder fa29(s1[8],c1[8],s2[8],s3[8],c3[9]);
	FullAdder fa30(s1[9],c1[9],s2[9],s3[9],c3[10]);
	FullAdder fa31(s1[10],c1[10],s2[10],s3[10],c3[11]);
	FullAdder fa32(s1[11],c1[11],s2[11],s3[11],c3[12]);
	FullAdder fa33(s1[12],c1[12],s2[12],s3[12],c3[13]);
	
	assign s3[13]=0,s3[14]=0,s3[15]=0;
    assign  c3[0]=0,c3[14]=0,c3[15]=0;
    


	FullAdder fa34(c2[0],m7[0],m8[0],s4[0],c4[1]);
	FullAdder fa35(c2[1],m7[1],m8[1],s4[1],c4[2]);
	FullAdder fa36(c2[2],m7[2],m8[2],s4[2],c4[3]);
	FullAdder fa37(c2[3],m7[3],m8[3],s4[3],c4[4]);
	FullAdder fa38(c2[4],m7[4],m8[4],s4[4],c4[5]);
	FullAdder fa39(c2[5],m7[5],m8[5],s4[5],c4[6]);
	FullAdder fa40(c2[6],m7[6],m8[6],s4[6],c4[7]);
	FullAdder fa41(c2[7],m7[7],m8[7],s4[7],c4[8]);
	FullAdder fa42(c2[8],m7[8],m8[8],s4[8],c4[9]);
	FullAdder fa43(c2[9],m7[9],m8[9],s4[9],c4[10]);
	FullAdder fa44(c2[10],m7[10],m8[10],s4[10],c4[11]);
	FullAdder fa45(c2[11],m7[11],m8[11],s4[11],c4[12]);
	FullAdder fa46(c2[12],m7[12],m8[12],s4[12],c4[13]);
	FullAdder fa47(c2[13],m7[13],m8[13],s4[13],c4[14]);
	FullAdder fa48(c2[14],m7[14],m8[14],s4[14],c4[15]);
	
	assign s4[15]=0;
	assign c4[0]=0;
    

    FullAdder fa49(s3[0],c3[0],s4[0],s5[0],c5[1]);
	FullAdder fa50(s3[1],c3[1],s4[1],s5[1],c5[2]);
	FullAdder fa51(s3[2],c3[2],s4[2],s5[2],c5[3]);
	FullAdder fa52(s3[3],c3[3],s4[3],s5[3],c5[4]);
	FullAdder fa53(s3[4],c3[4],s4[4],s5[4],c5[5]);
	FullAdder fa54(s3[5],c3[5],s4[5],s5[5],c5[6]);
	FullAdder fa55(s3[6],c3[6],s4[6],s5[6],c5[7]);
	FullAdder fa56(s3[7],c3[7],s4[7],s5[7],c5[8]);
	FullAdder fa57(s3[8],c3[8],s4[8],s5[8],c5[9]);
	FullAdder fa58(s3[9],c3[9],s4[9],s5[9],c5[10]);
	FullAdder fa59(s3[10],c3[10],s4[10],s5[10],c5[11]);
	FullAdder fa60(s3[11],c3[11],s4[11],s5[11],c5[12]);
	FullAdder fa61(s3[12],c3[12],s4[12],s5[12],c5[13]);
	FullAdder fa62(s3[13],c3[13],s4[13],s5[13],c5[14]);
	FullAdder fa63(s3[14],c3[14],s4[14],s5[14],c5[15]);
	
	assign s5[15]=0,c5[0]=0;
     

	FullAdder fa64(s5[0],c5[0],c4[0],s6[0],c6[1]);
	FullAdder fa65(s5[1],c5[1],c4[1],s6[1],c6[2]);
	FullAdder fa66(s5[2],c5[2],c4[2],s6[2],c6[3]);
	FullAdder fa67(s5[3],c5[3],c4[3],s6[3],c6[4]);
	FullAdder fa68(s5[4],c5[4],c4[4],s6[4],c6[5]);
	FullAdder fa69(s5[5],c5[5],c4[5],s6[5],c6[6]);
	FullAdder fa70(s5[6],c5[6],c4[6],s6[6],c6[7]);
	FullAdder fa71(s5[7],c5[7],c4[7],s6[7],c6[8]);
	FullAdder fa72(s5[8],c5[8],c4[8],s6[8],c6[9]);
	FullAdder fa73(s5[9],c5[9],c4[9],s6[9],c6[10]);
	FullAdder fa74(s5[10],c5[10],c4[10],s6[10],c6[11]);
	FullAdder fa75(s5[11],c5[11],c4[11],s6[11],c6[12]);
	FullAdder fa76(s5[12],c5[12],c4[12],s6[12],c6[13]);
	FullAdder fa77(s5[13],c5[13],c4[13],s6[13],c6[14]);
	FullAdder fa78(s5[14],c5[14],c4[14],s6[14],c6[15]);
	//FullAdder fa78(s5[15],c5[15],c4[15],s6[15],c6[15]);

    
    assign s6[15]=0,c6[0]=0;
	
	cla c(s6,c6,m,c6[0]);
	
	always @(s6,c6) begin
   // $display("s6=%b",s6);
   // $display("c6=%b",c6);
   // $display("m4=%b",m4);
    end
    
endmodule




	