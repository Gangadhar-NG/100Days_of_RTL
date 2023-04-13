module comparator
  #(parameter  width=2)
  (a,b,ALB,AEB,AGB);
  input [width-1:0]a;
  input [width-1:0]b;
  output reg ALB,AEB,AGB;
  
  always @*
    begin
      if(a<b)
        begin
          ALB=1'b1;
          AEB=1'b0;
          AGB=1'b0;
        end
      if (a==b)
        begin
          ALB=1'b0;
          AEB=1'b1;
          AGB=1'b0;
        end
      if(a>b)
        begin
          ALB=1'b0;
          AEB=1'b0;
          AGB=1'b1;
        end
    end
endmodule
