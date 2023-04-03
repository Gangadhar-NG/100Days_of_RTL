//Design of Full adder using Behavioral Modeling

module Fulladd(input a,b,cin,output reg sum,carry);
  
  always @(*)
    begin
      sum=a^b^cin;
      carry=a&b|(a^b)&cin;
    end
endmodule

//Design of Full adder using Data flow Modeling
/*module Fulladd(input a,b,cin,output reg sum,carry);
  
   assign sum=a^b^cin;
   assign carry=a&b|(a^b)&cin;
  
endmodule
*/

//Design of Full adder using Gate level Modeling
/*module Fulladd(input a,b,cin,output reg sum,carry);
  
  wire s_1,c_1,c_2;   //intermediate wire declaration
  
  xor g1(s_1,a,b);
  and g2(c_1,a,b);
  xor g3(sum,s_1,cin);
  and g4(c_2,s_1,cin);
  or g5(carry,c_1,c_2);
  
endmodule
*/

//Design of Full adder using Half adder
/*module Fulladd(input a,b,cin,output reg sum,carry);
  
  wire s_1,c_1,c_2;   //intermediate wire declaration
  
  HA m1(a,b,s_1,c_1);
  HA m2(s_1,cin,sum,c_2);
  or m3(carry,c_1,c_2);

endmodule
  
module HA(input a,b,output sum,carry);
      
  assign sum=a^b;
  assign carry=a&b;
  
endmodule
*/
