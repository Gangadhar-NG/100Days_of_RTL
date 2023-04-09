module tb;
  reg [1:0]in;
  reg sel;
  wire out;
  
  MUX_2x1 uut(.in(in),.sel(sel),.out(out));
  
  initial begin
    $monitor("in=%b sel=%b out=%b",in,sel,out);
    
    #2  in=2'b01;  sel=0;
    
    #2  in=2'b10;  sel=1;
    
    #2  in=2'b10;  sel=0;
    
    #2  in=2'b01;  sel=1;
  end
endmodule
