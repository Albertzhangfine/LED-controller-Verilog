module freq(clk,rst,clk_show,speed);  
  
input clk ;  
input rst ;  
input speed;
output reg clk_show;    

reg [6:0] counter;

always @ ( posedge clk or negedge rst or negedge speed)
begin
	if(!rst)
		begin
			clk_show<=0;
			counter<=0;
		end
	case(speed)
	  0:begin
	    	if(counter<10)
		    	counter<=counter+1;
		   else
			begin
				counter<=0;			
				clk_show<=~clk_show;
			end
	  end
	 1:begin 
	      if(counter<40)
		    	counter<=counter+1;
		   else
			begin
				counter<=0;			
				clk_show<=~clk_show;
			end
     end
	 endcase
end
endmodule
