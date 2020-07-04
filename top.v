module top(clk,rst,led);  
input clk ;  
input rst ;  
output [15:0]led ;  
  
wire clk_show;  

freq freq(
	.clk(clk),
	.rst(rst),
	.clk_show(clk_show),
	.speed(speed)
	);

	ledd(
	.clk(clk_show),
	.rst(rst),
	.led(led),
	.state_ctrl(state_ctrl)
	);  
endmodule
