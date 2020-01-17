
//`include "fulladder.v" 
module ProductC(A,B,Product);
output [15:0]Product;
wire [7:0]P1,P2,P3,P4,P5,P6,P7,P8;
//wire s11,s12,s13,s14,s15;
wire [7:0]Sum1,Sum2,Carry1,Carry2;
wire [15:0]Sum3,Carry3,Sum4,Carry4,Sum5,Carry5,Sum6,Carry6,Sum7,Carry7;
//output Cout;
//wire Carry;
input [7:0]A;
input [7:0]B;
//Bit8Adder B1(A[7:0],B[7:0],Cin,Sum[7:0],Carry);
//Bit8Adder B2(A[15:8],B[15:8],Carry,Sum[15:8],Cout);
 assign P1[0]= A[0] && ((B[0]));
 assign P1[1]= A[1] && ((B[0]));
 assign P1[2]= A[2] && ((B[0]));
 assign P1[3]= A[3] && ((B[0]));
 assign P1[4]= A[4] && ((B[0]));
 assign P1[5]= A[5] && ((B[0]));
 assign P1[6]= A[6] && ((B[0]));
 assign P1[7]= A[7] && ((B[0]));
 assign P2[0]= A[0] && ((B[1]));
 assign P2[1]= A[1] && ((B[1]));
 assign P2[2]= A[2] && ((B[1]));
 assign P2[3]= A[3] && ((B[1]));
 assign P2[4]= A[4] && ((B[1]));
 assign P2[5]= A[5] && ((B[1]));
 assign P2[6]= A[6] && ((B[1]));
 assign P2[7]= A[7] && ((B[1]));
 assign P3[0]= A[0] && ((B[2]));
 assign P3[1]= A[1] && ((B[2]));
 assign P3[2]= A[2] && ((B[2]));
 assign P3[3]= A[3] && ((B[2]));
 assign P3[4]= A[4] && ((B[2]));
 assign P3[5]= A[5] && ((B[2]));
 assign P3[6]= A[6] && ((B[2]));
 assign P3[7]= A[7] && ((B[2]));
 assign P4[0]= A[0] && ((B[3]));
 assign P4[1]= A[1] && ((B[3]));
 assign P4[2]= A[2] && ((B[3]));
 assign P4[3]= A[3] && ((B[3]));
 assign P4[4]= A[4] && ((B[3]));
 assign P4[5]= A[5] && ((B[3]));
 assign P4[6]= A[6] && ((B[3]));
 assign P4[7]= A[7] && ((B[3]));
 assign P5[0]= A[0] && ((B[4]));
 assign P5[1]= A[1] && ((B[4]));
 assign P5[2]= A[2] && ((B[4]));
 assign P5[3]= A[3] && ((B[4]));
 assign P5[4]= A[4] && ((B[4]));
 assign P5[5]= A[5] && ((B[4]));
 assign P5[6]= A[6] && ((B[4]));
 assign P5[7]= A[7] && ((B[4]));
 assign P6[0]= A[0] && ((B[5]));
 assign P6[1]= A[1] && ((B[5]));
 assign P6[2]= A[2] && ((B[5]));
 assign P6[3]= A[3] && ((B[5]));
 assign P6[4]= A[4] && ((B[5]));
 assign P6[5]= A[5] && ((B[5]));
 assign P6[6]= A[6] && ((B[5]));
 assign P6[7]= A[7] && ((B[5]));
 assign P7[0]= A[0] && ((B[6]));
 assign P7[1]= A[1] && ((B[6]));
 assign P7[2]= A[2] && ((B[6]));
 assign P7[3]= A[3] && ((B[6]));
 assign P7[4]= A[4] && ((B[6]));
 assign P7[5]= A[5] && ((B[6]));
 assign P7[6]= A[6] && ((B[6]));
 assign P7[7]= A[7] && ((B[6]));
 assign P8[0]= A[0] && ((B[7]));
 assign P8[1]= A[1] && ((B[7]));
 assign P8[2]= A[2] && ((B[7]));
 assign P8[3]= A[3] && ((B[7]));
 assign P8[4]= A[4] && ((B[7]));
 assign P8[5]= A[5] && ((B[7]));
 assign P8[6]= A[6] && ((B[7]));
 assign P8[7]= A[7] && ((B[7]));
 
 	/*halfadder A1(P1[1],P2[0],s11,c11);
 	fulladder A2(P1[2],P2[1],P3[0],s12,c12);
 	fulladder A3(P1[3],P2[2],P3[1],s13,c13);
 	fulladder A4(P2[3],P3[2],P4[1],s14,c14);
 	halfadder A5(P3[3],P4[2],s15,c15);
   
 	halfadder B1(c11,s12,s22,c22);
	fulladder B2(P4[0],c12,s13,s23,c23);
	fulladder B3(c13,c23,s14,s24,c24); 
	fulladder B4(c14,c24,s15,s25,c25);
	fulladder B5(c15,c25,P4[3],s26,c26);
	
	halfadder C1 (c22,s23,s32,c32);
	halfadder C2 (c32,s24,s34,c34);
	halfadder C3 (c34,s25,s35,c35);
	halfadder C4 (c35,s26,s36,c36);
	halfadder C5 (c36,c26,s37,c37);
	*/
	//Sum1-1st 3 rows
	halfadder A1(P1[1],P2[0],Sum1[0],Carry1[0]);
 	fulladder A2(P1[2],P2[1],P3[0],Sum1[1],Carry1[1]);
 	fulladder A3(P1[3],P2[2],P3[1],Sum1[2],Carry1[2]);
 	fulladder A4(P1[4],P2[3],P3[2],Sum1[3],Carry1[3]);
 	fulladder A5(P1[5],P2[4],P3[3],Sum1[4],Carry1[4]);
 	fulladder A6(P1[6],P2[5],P3[4],Sum1[5],Carry1[5]);
 	fulladder A7(P1[7],P2[6],P3[5],Sum1[6],Carry1[6]);
 	halfadder A8(P2[7],P3[6],Sum1[7],Carry1[7]);
 	//assign sum1[8]=P3[7];
 	//assign Sum2[0]=P4[0];
 	//Sum2-next 3 rows.
 	halfadder B1(P4[1],P5[0],Sum2[0],Carry2[0]);
 	fulladder B2(P4[2],P5[1],P6[0],Sum2[1],Carry2[1]);
 	fulladder B3(P4[3],P5[2],P6[1],Sum2[2],Carry2[2]);
 	fulladder B4(P4[4],P5[3],P6[2],Sum2[3],Carry2[3]);
 	fulladder B5(P4[5],P5[4],P6[3],Sum2[4],Carry2[4]);
 	fulladder B6(P4[6],P5[5],P6[4],Sum2[5],Carry2[5]);
 	fulladder B7(P4[7],P5[6],P6[5],Sum2[6],Carry2[6]);
 	halfadder B8(P5[7],P6[6],Sum2[7],Carry2[7]);
 	//Adding Sum1,Carry1,Sum2
 	//assign Sum2[8]=P6[7];
 	//assign Sum3[0]=Sum1[0];
 	halfadder C1(Sum1[1],Carry1[0],Sum3[0],Carry3[0]);
 	fulladder C2(Sum1[2],Carry1[1],P4[0],Sum3[1],Carry3[1]);
 	fulladder C3(Sum1[3],Carry1[2],Sum2[0],Sum3[2],Carry3[2]);
 	fulladder C4(Sum1[4],Carry1[3],Sum2[1],Sum3[3],Carry3[3]);
 	fulladder C5(Sum1[5],Carry1[4],Sum2[2],Sum3[4],Carry3[4]);
 	fulladder C6(Sum1[6],Carry1[5],Sum2[3],Sum3[5],Carry3[5]);
 	fulladder C7(Sum1[7],Carry1[6],Sum2[4],Sum3[6],Carry3[6]);
 	fulladder C8(P3[7],Carry1[7],Sum2[5],Sum3[7],Carry3[7]);
 	//assign Sum3[8]=Sum2[6];
 	//assign Sum3[9]=Sum2[7];
 	//assign Sum3[10]=Sum2[8];
 	
 	//halfadder C8(P4[7],P3[6],Sum2[7],Carry2[7]);
 	//Adding P7,P8,Carry2
 	halfadder D1(P7[0],Carry2[1],Sum4[0],Carry4[0]);
 	fulladder D2(P7[1],Carry2[2],P8[0],Sum4[1],Carry4[1]);
 	fulladder D3(P7[2],Carry2[3],P8[1],Sum4[2],Carry4[2]);
 	fulladder D4(P7[3],Carry2[4],P8[2],Sum4[3],Carry4[3]);
 	fulladder D5(P7[4],Carry2[5],P8[3],Sum4[4],Carry4[4]);
 	fulladder D6(P7[5],Carry2[6],P8[4],Sum4[5],Carry4[5]);
 	fulladder D7(P7[6],Carry2[7],P8[5],Sum4[6],Carry4[6]);
 	halfadder D8(P7[7],P8[6],Sum4[7],Carry4[7]);
 	//assign Sum4[8]=P8[7];
 	
 	//Adding Sum3,Carry3,Sum4
 	
 	halfadder E1(Sum3[1],Carry3[0],Sum5[0],Carry5[0]);
 	halfadder E2(Sum3[2],Carry3[1],Sum5[1],Carry5[1]);
 	fulladder E3(Sum3[3],Carry3[2],Carry2[0],Sum5[2],Carry5[2]);
 	fulladder E4(Sum3[4],Carry3[3],Sum4[0],Sum5[3],Carry5[3]);
 	fulladder E5(Sum3[5],Carry3[4],Sum4[1],Sum5[4],Carry5[4]);
 	fulladder E6(Sum3[6],Carry3[5],Sum4[2],Sum5[5],Carry5[5]);
 	fulladder E7(Sum3[7],Carry3[6],Sum4[3],Sum5[6],Carry5[6]);
 	fulladder E8(Sum2[6],Sum4[4],Carry3[7],Sum5[7],Carry5[7]);
 	halfadder E9(Sum2[7],Sum4[5],Sum5[8],Carry5[8]);
 	halfadder E12(P6[7],Sum4[6],Sum5[9],Carry5[9]);
 	//assign Sum5[11]=Sum4[7];
 	//assign Sum5[12]=P8[7]; 	
 	
 	//Adding Sum5,Carry5,Sum4
 	/*
 	halfadder F1(Sum5[1],Carry5[0],Sum6[0],Carry6[0]);
 	halfadder F2(Sum5[2],Carry5[1],Sum6[1],Carry6[1]);
 	halfadder F3(Sum5[3],Carry5[2],Sum6[2],Carry6[2]);
 	fulladder F4(Sum5[4],Carry5[3],Carry4[0],Sum6[3],Carry6[3]);
 	fulladder F5(Sum5[5],Carry5[4],Carry4[1],Sum6[4],Carry6[4]);
 	fulladder F6(Sum5[6],Carry3[5],Carry4[2],Sum6[5],Carry6[5]);
 	fulladder F7(Sum5[7],Carry5[6],Carry4[3],Sum6[6],Carry6[6]);
 	fulladder F8(Sum5[8],Carry5[7],Carry4[4],Sum6[7],Carry6[7]);
 	fulladder F9(Sum5[9],Carry5[8],Carry4[5],Sum6[8],Carry6[8]);
 	fulladder F10(Sum5[10],Carry5[9],Carry4[6],Sum6[9],Carry6[9]);
 	fulladder F11(Sum4[7],Carry5[10],Carry4[7],Sum6[10],Carry6[10]);
 	halfadder F12(P8[7],Carry5[11],Sum6[11],Carry6[11]); 	
 	*/
 	halfadder F1(Sum5[1],Carry5[0],Sum6[0],Carry6[0]);
 	halfadder F2(Sum5[2],Carry5[1],Sum6[1],Carry6[1]);
 	halfadder F3(Sum5[3],Carry5[2],Sum6[2],Carry6[2]);
 	fulladder F4(Sum5[4],Carry5[3],Carry4[0],Sum6[3],Carry6[3]);
 	fulladder F5(Sum5[5],Carry5[4],Carry4[1],Sum6[4],Carry6[4]);
 	fulladder F6(Sum5[6],Carry3[5],Carry4[2],Sum6[5],Carry6[5]);
 	fulladder F7(Sum5[7],Carry5[6],Carry4[3],Sum6[6],Carry6[6]);
 	fulladder F8(Sum5[8],Carry5[7],Carry4[4],Sum6[7],Carry6[7]);
 	fulladder F9(Sum5[9],Carry5[8],Carry4[5],Sum6[8],Carry6[8]);
 	fulladder F10(Sum4[7],Carry5[9],Carry4[6],Sum6[9],Carry6[9]);
 	halfadder F11(P8[7],Carry4[7],Sum6[10],Carry6[10]);
 	//fulladder F11(Sum4[7],Carry5[10],Carry4[7],Sum6[10],Carry6[10]);
 	//halfadder F12(P8[7],Carry5[11],Sum6[11],Carry6[11]); 
 	
 	//Adding Sum6,Carry6

	halfadder G1(Sum6[1],Carry6[0],Sum7[0],Carry7[0]);
	fulladder G4(Sum6[2],Carry6[1],Carry7[0],Sum7[1],Carry7[1]);
 	fulladder G5(Sum6[3],Carry6[2],Carry7[1],Sum7[2],Carry7[2]);
 	fulladder G6(Sum6[4],Carry6[3],Carry7[2],Sum7[3],Carry7[3]);
 	fulladder G7(Sum6[5],Carry6[4],Carry7[3],Sum7[4],Carry7[4]);
 	fulladder G8(Sum6[6],Carry6[5],Carry7[4],Sum7[5],Carry7[5]);
 	fulladder G9(Sum6[7],Carry6[6],Carry7[5],Sum7[6],Carry7[6]);
 	fulladder G10(Sum6[8],Carry6[7],Carry7[6],Sum7[7],Carry7[7]);
 	fulladder G11(Sum6[9],Carry6[8],Carry7[7],Sum7[8],Carry7[8]);
 	fulladder G12(Sum6[10],Carry6[9],Carry7[8],Sum7[9],Carry7[9]);
 	halfadder G13(Carry6[10],Carry7[9],Sum7[10],Carry7[10]);
 	//fulladder G13(Sum6[11],Carry6[10],Carry7[9],Sum7[10],Carry7[10]);
 	//halfadder G14(Carry7[10],Carry6[11],Sum7[11],Carry7[11]); 
 	
 	assign Product[0] = P1[0];
	assign Product[1] = Sum1[0];
	assign Product[2] = Sum3[0];
	assign Product[3] = Sum5[0];
	assign Product[4] = Sum6[0];
	assign Product[5] = Sum7[0];
	assign Product[6] = Sum7[1];
	assign Product[7] = Sum7[2];
	assign Product[8] = Sum7[3];
	assign Product[9] = Sum7[4];
	assign Product[10] = Sum7[5];
	assign Product[11] = Sum7[6];
	assign Product[12] = Sum7[7];
	assign Product[13] = Sum7[8];
	assign Product[14] = Sum7[9];
	assign Product[15] = Sum7[10];
 	
 	
 	/*fulladder B9(P2[7],P3[6],P4[5],s14,c14);
 	fulladder A10(P3[7],P4[6],P5[5],s14,c14);
 	fulladder A11(P4[7],P5[6],P6[5],s14,c14);
 	fulladder A12(P4[7],P5[6],P6[5],s14,c14);
 	halfadder A5(P3[3],P4[2],s15,c15);
assign Product[0] = P1[0];
assign Product[1] = s11;
assign Product[2] = s22;
assign Product[3] = s32;
assign Product[4] = s34;
assign Product[5] = s35;
assign Product[6] = s36;
assign Product[7] = s37;*/	
//always@(*)
//	begin
	   
		//$display("Sum1=%b\n,Carry1=%b\n,Sum2=%b\n,Carry2=%b\n,Sum3=%b\n,Carry3=%b\nSum4=%b\nCarry4=%b\nSum5=%b\nCarry5=%b\nSum6=%b\n,Carry6=%b\n,Sum7=%b,Carry7=%b",Sum1,Carry1,Sum2,Carry2,Sum3,Carry3,Sum4,Carry4,Sum5,Carry5,Sum6,Carry6,Sum7,Carry7);
		//$display("P0=%bP1=%bP2=%bP3=%bP4=%bP5=%bP6=%bP7=%b",P1,P2,P3,P4,P5,P6,P7,P8);
//	end
endmodule
