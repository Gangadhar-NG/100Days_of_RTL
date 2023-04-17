module tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  integer i;
  
  CLA_adder uut(a,b,cin,sum,cout);
  
  initial begin
    $monitor("a=%0d b=%0d cin=%b sum=%d cout=%b",a,b,cin,sum,cout);
    
    for(i=0;i<15;i++)
      begin
        a=$urandom;
        b=$urandom;
        cin=$urandom;
        #2;
      end
  end
endmodule
