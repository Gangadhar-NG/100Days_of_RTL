module tb;
  
  reg a,b,cin;
  wire sum,carry;
  integer i;
  
  full_add uut(a,b,cin,sum,carry);
  
  initial begin
    $monitor($time," a=%b b=%b cin=%b sum=%b carry=%b ",a,b,cin,sum,carry);
    
    for(i=0;i<8;i++)
      begin
        {a,b,cin}=i;
        #2;
      end
  end
endmodule
