//Design the 4X1_MUX using the Behavioral Modeling 

module MUX_4x1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output reg out;
  
  always @*
    begin
      out=sel[1]?(sel[0]?in[3]:in[2]):(sel[0]?in[1]:in[0]);
    end
  
endmodule

//Design the 4X1_MUX using the Dataflow Modeling 
/*
module MUX_4x1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output out;
  
  assign out=sel[1]?(sel[0]?in[3]:in[2]):(sel[0]?in[1]:in[0]);
  
endmodule

*/
//Using case statement
/*module MUX_4x1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output reg out;
  
  always @*
    begin
      case(sel)
        2'b00 : out=in[0];
        2'b01 : out=in[1];
        2'b10 : out=in[2];
        2'b11 : out=in[3];
        
        default out=1'bx;
      endcase
    end
endmodule
*/
//Using if statement
/*module MUX_4x1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output reg out;
  
  always @*
    begin
      if(sel==2'b00)
        out=in[0];
      if(sel==2'b01)
        out=in[1];
      if(sel==2'b10)
        out=in[2];
      if(sel==2'b11)
        out=in[3];
    end
endmodule
     */ 


//Design the 4X1_MUX using the Gate level Modeling 
/*module MUX_4x1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output out;
  
  wire sel0_b,sel1_b,i0,i1,i2,i3; //declaration of intermediate wires
 
  not (sel0_b,sel[0]),(sel1_b,sel[1]);
  and (i0,in[0],sel0_b,sel1_b),(i1,in[1],sel[0],sel1_b),(i2,in[2],sel0_b,sel[1]),(i3,in[3],sel[0],sel[1]);
  or (out,i0,i1,i2,i3);
  
endmodule
*/
