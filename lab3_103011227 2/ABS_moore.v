module ABS_moore (rst,clk,timeIn,wheel,unlock);
	input rst, clk, timeIn, wheel;
	output  unlock;
	
	//your design..
    
	reg[4:0] state;
        reg[4:0] next_state;
    
    `define S0  5'b00001
    `define S1  5'b00010
    `define S2  5'b00100
    `define S3  5'b01000
    `define S4  5'b10000
   
    
    
        always @(posedge clk or posedge rst) begin
//            $display(" state now : %b\n ",next_state);
	    if(rst)
                state <= `S0;
            else 
                state <= next_state;
        end
        
        always @(*) begin
            case (state) 
                `S0: 
                    if(timeIn==1 && wheel==0)
                        next_state=`S1;
                    else if(timeIn==0 && wheel==0)
                        next_state=`S0;
                     else if(timeIn==0 && wheel==1)
                     next_state=`S0;
                     else
                     next_state=`S0;
                `S1: 
                    if(timeIn==0 && wheel==0)
                        next_state=`S1;
                    else if(timeIn==0 && wheel==1)
                        next_state=`S0;
                     else if(timeIn==1 && wheel==0)begin
                        next_state=`S2;
                            

                        end
                     else
                     next_state=`S0;
                `S2: begin
                        next_state=`S3;
			end
		`S3:
                    if(timeIn==1)
                    next_state=`S4;
                    else begin
                    next_state=`S3;
			end
                `S4:
                     if(timeIn==1)
                     next_state=`S0;
                     else
                    next_state=`S4;        
		default:begin
			next_state=`S0;
			end
            endcase
//$display("timeIn: %b wheel: %b state: %b next_state: %b \n ",timeIn,wheel,state,next_state);	
        end
        assign unlock = (state==5'b00100)?1:0 ;
    
// Edit your module contents here











endmodule
