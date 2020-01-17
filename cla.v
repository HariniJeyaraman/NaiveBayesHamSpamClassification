module cla(a,b,sum,carry);

input [15:0]a, b;
output reg [15:0] sum; output reg carry;
integer w[16:0]; integer i,j;


always @* begin

	w[0]=0;

    if(a[0]^b[0]==1) w[1]=2;
    else if(a[0]^b[0]==0 && a[0]==0) w[1]=0;
    else w[1]=1;
    
    if(a[1]^b[1]==1) w[2]=2;
    else if(a[1]^b[1]==0 && a[1]==0) w[2]=0;
    else w[2]=1;
    
    if(a[2]^b[2]==1) w[3]=2;
    else if(a[2]^b[2]==0 && a[2]==0) w[3]=0;
    else w[3]=1;
    
    if(a[3]^b[3]==1) w[4]=2;
    else if(a[3]^b[3]==0 && a[3]==0) w[4]=0;
    else w[4]=1;
    
    if(a[4]^b[4]==1) w[5]=2;
    else if(a[4]^b[4]==0 && a[4]==0) w[5]=0;
    else w[5]=1;
    
    if(a[5]^b[5]==1) w[6]=2;
    else if(a[5]^b[5]==0 && a[5]==0) w[6]=0;
    else w[6]=1;
    
    if(a[6]^b[6]==1) w[7]=2;
    else if(a[6]^b[6]==0 && a[6]==0) w[7]=0;
    else w[7]=1;
    
    if(a[7]^b[7]==1) w[8]=2;
    else if(a[7]^b[7]==0 && a[7]==0) w[8]=0;
    else w[8]=1;
    
    if(a[8]^b[8]==1) w[9]=2;
    else if(a[8]^b[8]==0 && a[8]==0) w[9]=0;
    else w[9]=1;
    
    if(a[9]^b[9]==1) w[10]=2;
    else if(a[9]^b[9]==0 && a[9]==0) w[10]=0;
    else w[10]=1;
    
    if(a[10]^b[10]==1) w[11]=2;
    else if(a[10]^b[10]==0 && a[10]==0) w[11]=0;
    else w[11]=1;
    
    if(a[11]^b[11]==1) w[12]=2;
    else if(a[11]^b[11]==0 && a[11]==0) w[12]=0;
    else w[12]=1;
    
    if(a[12]^b[12]==1) w[13]=2;
    else if(a[12]^b[12]==0 && a[12]==0) w[13]=0;
    else w[13]=1;
    
    if(a[13]^b[13]==1) w[14]=2;
    else if(a[13]^b[13]==0 && a[13]==0) w[14]=0;
    else w[14]=1;
    
    if(a[14]^b[14]==1) w[15]=2;
    else if(a[14]^b[14]==0 && a[14]==0) w[15]=0;
    else w[15]=1;
    
    if(a[15]^b[15]==1) w[16]=2;
    else if(a[15]^b[15]==0 && a[15]==0) w[16]=0;
    else w[16]=1;


  for(i=1;i<=16;i=i+1)
    begin
      if(w[i]==2) w[i]=w[i-1];
    end

  
  sum[0]=a[0]^b[0]^w[0];
  sum[1]=a[1]^b[1]^w[1];
  sum[2]=a[2]^b[2]^w[2];
  sum[3]=a[3]^b[3]^w[3];
  sum[4]=a[4]^b[4]^w[4];
  sum[5]=a[5]^b[5]^w[5];
  sum[6]=a[6]^b[6]^w[6];
  sum[7]=a[7]^b[7]^w[7];
  sum[8]=a[8]^b[8]^w[8];
  sum[9]=a[9]^b[9]^w[9];
  sum[10]=a[10]^b[10]^w[10];
  sum[11]=a[11]^b[11]^w[11];
  sum[12]=a[12]^b[12]^w[12];
  sum[13]=a[13]^b[13]^w[13];
  sum[14]=a[14]^b[14]^w[14];
  sum[15]=a[15]^b[15]^w[15];
  
  carry = w[16];
  
end

endmodule
