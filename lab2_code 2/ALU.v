module ALU(A,B,Cin,FS,Y,C,N,Z,V);
	parameter n=32;
	
	input [n-1:0]A,B;
	input [3:0]FS;
	input Cin;
	
	output reg [n-1:0]Y;
	output reg C,N,Z,V;
	
	// your design...
    wire [31:0]add_result;
    reg [31:0]a_value,b_value;
    reg cin_value;
    wire cout;
    wire overflow;
    
    
    Adder32 add(a_value,b_value,cin_value,cout,add_result,overflow);
    
    always@(*)begin
        case(FS)
           4'b0000:begin
                   Y=A;
                      if(A==0)
                         Z=1;
                     else
                         Z=0; 
                     
                     if(A[31])
                         N=1;
                     else
                        N=0;
        
                C=0;
                   end
           4'b0001:begin
                   Y=B;
                       if(B==0)
                            Z=1;
                        else
                            Z=0; 
                            
                        if(B[31]<0)
                            N=1;
                        else
                            N=0;
                   
                   C=0;

                   end
            4'b0010:begin
                    
                        a_value=A;
                        b_value=B;
                        cin_value=0;
                        Y=add_result;
                        V=overflow;
                        C=cout;
                         if(Y==0)
                             Z=1;
                         else
                             Z=0; 
                             
                        if(Y[31])
                             N=1;
                        else
                             N=0;                                
                    end
                    
            4'b0011:begin
                           a_value=A;
                           b_value=B;
                           cin_value=Cin;
                            Y=add_result;
                            V=overflow;
                            C=cout;
                             if(Y==0)
                                     Z=1;
                                 else
                                     Z=0; 
                                     
                                if(Y[31])
                                     N=1;
                                else
                                     N=0;                                
                      end
            4'b0100:begin
                             a_value=A;
                             b_value=B;
                            cin_value=Cin;
                             Y=add_result;
                              C=cout;
                              V=overflow;
                              if(V)begin
                                 if(!A[31])
                                 Y=32'h7fffffff;
                                 else
                                 Y=32'h80000000;
                              end
                              
                              
                               if(Y==0)
                                     Z=1;
                                 else
                                    Z=0; 
                                               
                                      if(Y[31])
                                               N=1;
                                          else
                                            N=0;                                
                   end
                   
           4'b0101:begin
                          a_value=A;
                          b_value=~B+1'b1;
                          cin_value=Cin;
                           Y=add_result;
                          C=cout;
                            V=overflow;

                                              if(Y==0)
                                               Z=1;
                                               else
                                               Z=0; 
                                                                  
                                               if(Y[31])
                                              N=1;
                                            else
                                            N=0;                                
                     end
             
            4'b0110:begin              
                       a_value=A;
                       b_value=~B+1'b1;
                        cin_value=Cin;
                        Y=add_result;
                        C=cout;
                        V=overflow;
                        if(V)begin
                            if(!A[31])
                                  Y=32'h7fffffff;
                            else
                                Y=32'h80000000; 
                            end
                        if(Y==0)
                        Z=1;
                        else
                        Z=0;
                        
                        if(Y[31])
                        N=1;
                        else
                        N=0;
                                 
    
                   end 
           4'b0111:begin
                    Y= A & B ;
                    C=0;
                    Z=0;
                    N=0;
                    V=0;
           
                  end        
          4'b1000:begin
                    Y= A | B;
                    C=0;
                    Z=0;
                    N=0;
                    V=0;
          
          
                   end
          4'b1001: begin
                   Y= A ^ B;
                   C=0;
                   Z=0;
                   N=0;
                   V=0;
          
          
                  end         
          4'b1010: begin
                    Y=~A;
                   
                    C=0;
                    Z=0;
                    N=0;
                    V=0;
           
          
          
                end
          
          4'b1011:begin
                              Y=A<<1'b1;
                          C=0;
                          Z=0;
                          N=0;
                          V=0;
                 

          
          
                end
          
          4'b1100:begin
          
                   if(  (A[31] & ~A[30]) || (~A[31] & A[30]))  V=1;
                   else V=0;
                   if(A[31]) C=1;
                   else C=0;
                   Y= $signed (A)<<<1'b1;
                   if(Y[31]) N=1;
                   else N=0;
                   
                   if(A==0) Z=1;
                   else   Z=0;
                   
          
                end
          
          4'b1101:begin
                    Y=A>>1'b1;
                    C=0;
                   N=0;
                   Z=0;
                   V=0;
          
          
                end
          
          4'b1110:begin
                    Y= $signed (A)>>>1'b1;
                    C=0;
                    if(Y[31]) N=1;
                    else N=0;
                    
                    if(Y==0) Z=1;
                    else Z=0;
                    
                    V=0;
          
          
          
                end
          
          
          
          
          
          
          
          
                    
                             
             default:begin
                Y=0;
                N=0;
                Z=1;
                end    
                    
                    
        endcase
    
    end
	
	
	
	
	
	
	
	
	
	
	
	
	
endmodule