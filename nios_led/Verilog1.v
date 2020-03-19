 module Verilog1(
     CLOCK_50,
     LED,
     SW
 );
  input CLOCK_50;
  output [7:0] LED;
  output [7:0] SW;
System u0(
 .clk_clk (CLOCK_50),
 .led_export (LED),
 .reset_reset_n (1'b1),
 .sw_export(SW)
 );
endmodule