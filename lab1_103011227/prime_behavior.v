module prime(in,p);
input [3:0]in;
output reg p;

always@(*)begin
   case (in)
     0  : p=0;
     1   : p = 1;
     2   : p= 1;
     3   : p = 1;
     4   : p = 0;
     5   : p = 1;
     6   : p= 0;
     7   : p = 1;
     8   : p=0;
     9   : p = 0;
     10   : p = 0;
     11  : p = 1;
     12   : p = 0;
     13  : p = 1;
     14   : p = 0; 
     default : p = 0;
  endcase



end



endmodule
