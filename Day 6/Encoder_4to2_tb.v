module tb;
  reg [3:0]in;
  wire [1:0]out;
  integer i;
  encoder_4to2 uut(in,out);
  
  initial begin
    $monitor($time," in=%b out=%b",in,out);
   
   
        for(i=0;i<4;i++)
          begin
            in=2**i;
            #2; 
          end
  end
endmodule
