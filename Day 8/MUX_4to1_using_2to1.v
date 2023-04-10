module mux_2to1(in,sel,out);
  input [1:0]in;
  input sel;
  output out;
  
  assign out=in[sel];
  
endmodule

module mux_4to1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output out;
  
  wire [1:0]w;
  
  mux_2to1 m1(.in(in[1:0]),.sel(sel[0]),.out(w[0]));
  mux_2to1 m2(.in(in[3:2]),.sel(sel[0]),.out(w[1]));
  mux_2to1 m3(.in(w[1:0]),.sel(sel[1]),.out(out));
  
endmodule
