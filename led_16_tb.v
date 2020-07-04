`timescale 10 ps/ 1 ps
module led_16_tb();

reg clk;
reg rst;
reg speed;
reg state_ctrl ;
                                             
wire [15:0]led ;
wire clk_show;
                        
led_16 u (

	.clk(clk),
	.rst(rst),
	.speed(speed),
	.state_ctrl(state_ctrl),
	.led(led),
	.clk_show(clk_show)
);
always #50 clk=~clk; 





initial                                                
begin                                                  
                                      
$display("Running testbench");      




clk<=0;
rst<=1;
speed<=1;
state_ctrl<=0;
#10000 rst<=0;
#10000 rst<=1;
#10000 state_ctrl<=0;
#20000 state_ctrl<=1;
#500000 speed<=0;

                 
end                                                    

                                                   
endmodule
