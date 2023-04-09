module tb;
  localparam width_in=8,width_sel=3;
  
  reg [width_in-1:0]in[8];
  reg [width_sel-1:0]sel;
  wire [width_in-1:0]out;
  integer i;
  
  mux #(.width_in(width_in),.width_sel(width_sel)) uut (in,sel,out);
  
  
  initial begin
    $monitor("in[0]=%0d in[1]=%0d in[2]=%0d in[3]=%0d in[4]=%0d in[5]=%0d in[6]=%0d in[7]=%0d sel=%0d out=%d",in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7],sel,out);
    
    repeat(12)
      begin
        for(i=0;i<8;i++)
          in[i]=$random;
        sel=$urandom;
        #2;
      end
  end
endmodule
