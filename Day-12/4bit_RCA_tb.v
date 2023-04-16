module tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire carry;
  integer i;
  
  RCA uut(a,b,cin,sum,carry);
  
  initial begin
    $monitor("a=%0d b=%0d cin=%b sum=%0d carry=%0b",a,b,cin,sum,carry);
    
    for(i=0;i<15;i++)
      begin
        a=$urandom;
        b=$urandom;
        cin=$random;
        #2;
      end
  end
endmodule
    
          
