module tb;
  reg [3:0]in;
  reg [1:0]sel;
  wire out;
  
  MUX_4x1 uut(.in(in),.sel(sel),.out(out));
  
  initial begin
    $monitor("in=%b sel=%b out=%b",in,sel,out);
    
    #2  in=4'b0001;  sel=0;
    
    #2  in=4'b0010;  sel=1;
    
    #2  in=4'b0100;  sel=2;
    
    #2  in=4'b1000;  sel=3;
  end
endmodule
