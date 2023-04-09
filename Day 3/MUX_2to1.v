//Design the 2X1_MUX using the Behavioral Modeling 

module MUX_2x1(in,sel,out);
  input [1:0]in;
  input sel;
  output reg out;
  
  always @*
    begin
      out=sel?in[1]:in[0];
    end
  
endmodule

//Design the 2X1_MUX using the Dataflow Modeling 
/*
module MUX_2x1(in,sel,out);
  input [1:0]in;
  input sel;
  output out;
  
  assign out=sel?in[1]:in[0];
  
endmodule
*/

//Design the 2X1_MUX using the Gate level Modeling 
/*
module MUX_2x1(in,sel,out);
  input [1:0]in;
  input sel;
  output out;
  
  wire i0,i1,s0; //declaration of intermediate wires
 
  not g1(s0,sel);
  and g2(i0,in[0],s0);
  and g3(i1,in[1],sel);
  or g4(out,i0,i1);
  
endmodule
*/
