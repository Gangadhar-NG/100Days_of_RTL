module tb;
  localparam width=2;
  reg [width-1:0]a;
  reg [width-1:0]b;
  wire ALB,AEB,AGB;
  integer i;
  
  comparator #(.width(width)) uut (a,b,ALB,AEB,AGB);
  
  initial begin
    $monitor($time," a=%0d b=%0d ALB=%b AEB=%b AGB=%b",a,b,ALB,AEB,AGB);
    
    for(i=0;i<8;i++)
      begin
        a=$urandom;
        b=$urandom;
        #2;
      end
    end
endmodule
