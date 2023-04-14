module tb;
  reg A,B,Cin;
  wire Sum,Carry;
  integer i;
  
  FA uut(A,B,Cin,Sum,Carry);
  
  initial begin
    $monitor($time," A=%b B=%b Cin=%b Sum=%b Carry=%b",A,B,Cin,Sum,Carry);
    
    for(i=0;i<8;i++)
      begin
        {A,B,Cin}=i;
        #2;
      end
  end
endmodule
