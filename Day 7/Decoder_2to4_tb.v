module tb;
  reg [1:0]in;
  wire [3:0]out;
  
  decoder_2to4 uut(in,out);
  
  initial begin
    $monitor($time, " in=%b out=%b ", in,out);
    
    for(int i=0;i<4;i++)
      begin
        in=i;
        #2;
      end
  end
endmodule
