module mux
  #(parameter  width_in=8,
    parameter  width_sel=3
   )
  (
    input [width_in-1:0]in[8],
    input [width_sel-1:0]sel,
    output [width_in-1:0]out
  );
  
  assign out=in[sel];
endmodule
