module full_add(input a,b,cin,output sum,carry);
  
  wire [2:0]in1;
  wire [7:0]out1;
   
  assign in1={a,b,cin};
  
    decoder_3to8 u1(in1,out1);
  
  assign sum=out1[1]|out1[2]|out1[4]|out1[7];
  assign carry=out1[3]|out1[5]|out1[6]|out1[7];
  
endmodule

module decoder_3to8(in,out);
  input [2:0]in;
  output reg [7:0]out;
  
  always @*
    begin
      case(in)
        3'b000 : out = 8'b00000001;
        3'b001 : out = 8'b00000010;
        3'b010 : out = 8'b00000100;
        3'b011 : out = 8'b00001000;
        3'b100 : out = 8'b00010000;
        3'b101 : out = 8'b00100000;
        3'b110 : out = 8'b01000000;
        3'b111 : out = 8'b10000000;
      endcase
    end
endmodule
    
