module tb;
  
  reg [3:0]in;
  reg [1:0]sel;
  wire out;
  integer i;
  
  mux_4to1 uut(in,sel,out);
  
  initial begin
    $monitor("in=%b sel=%b out=%b",in,sel,out);
    
    repeat(8)
      begin
      for(i=0;i<4;i++)
        in=$random;
        sel=$random;
    #2;
      end
  end
endmodule
