module Fulladd_tb;
  
  reg a,b,cin;
  wire sum,carry;
  integer i;
  
  Fulladd uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  
  initial begin
    $monitor("a=%b b=%b cin=%b sum=%b carry=%b",a,b,cin,sum,carry);
    for(i=0;i<8;i++)
      begin
        {a,b,cin}=i;
        #2;
      end
  end
  
  initial begin
    $dumpfile("Fulladd.vcd");
    $dumpvars(0,Fulladd_tb);
  end
endmodule
