
module RCA(a,b,cin,sum,carry);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output carry;
  
  wire c1,c2,c3;
  
  FA u1(a[0],b[0],cin,sum[0],c1);
  FA u2(a[1],b[1],c1,sum[1],c2);
  FA u3(a[2],b[2],c2,sum[2],c3);
  FA u4(a[3],b[3],c3,sum[3],carry);

endmodule


module FA(input a,b,cin,output sum,carry);
  
  assign sum=a^b^cin;
  assign carry=(a^b)&cin|a&b;
  
endmodule
