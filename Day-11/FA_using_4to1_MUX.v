module FA(input A,B,Cin,output Sum,Carry);
  
  wire Cinb;
  
  not g1(Cinb,Cin);
  
  MUX_4X1 m1(.I0(Cin),.I1(Cinb),.I2(Cinb),.I3(Cin),.S0(B),.S1(A),.out(Sum));
  MUX_4X1 m2(.I0(1'b0),.I1(Cin),.I2(1'b1),.I3(Cin),.S0(B),.S1(A),.out(Carry));

endmodule


module MUX_4X1(input I0,I1,I2,I3,S0,S1,output out);
 
  assign out=S1?(S0?I3:I2):(S0?I1:I0);
  
endmodule
