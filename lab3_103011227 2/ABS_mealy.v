module ABS_mealy (rst,clk,timeIn,wheel,unlock);
	input rst, clk, timeIn, wheel;
	output reg unlock;
	
	//your design..
	reg[3:0] state;
    reg[3:0] next_state;
        
     parameter S0=4'b0001;
     parameter S1 =4'b0010;
     parameter S2 =4'b0011;
     parameter S3 =4'b0100;
     parameter S4=4'b0101;
            always @(posedge clk or posedge rst) begin
                if(rst)
                    state <= S0;
                else 
                    state <= next_state;
            end
            
            always @(*) begin
            //$display("In: %d state: %d next_state: %d \n ",timeIn,state,next_state);
                case (state) 
                    S0:    if(timeIn==1 && !wheel) begin
                            next_state=S1;
                            unlock=0;
                            end
                        else begin
                            next_state=S0;
                            unlock=0;
                            end
                    S1: 
                        if(timeIn==0 && wheel==0)begin
                            next_state=S1;
                            unlock=0;
                            end
                        else if(timeIn==0 && wheel==1)begin
                            next_state=S0;
                            unlock=0;
                            end
                         else if(timeIn==1 && wheel==0)begin
                            next_state=S2;
                            unlock=1;
                            end
                         else begin
                         next_state=S0;
                         unlock=0;
                         end
                    S2: begin
			if(timeIn==1)
                            next_state=S3;
			else
			next_state=S2;
                            unlock=0;
                         end
                    S3:begin
                        if(timeIn==1)
                        next_state=S0;
                        else
                        next_state=S3;
                        
                        unlock=0;
			end
		    default:begin
			next_state=S0;
			unlock=0;
			end
			

                endcase
            end
	
	
	
	
endmodule
