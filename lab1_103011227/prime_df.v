module prime(in,p);
input [3:0]in;
output p;

assign p= (in[0] & ~in[3]) | (in[1] & ~in[2] & ~in[3]) | ( in[0] & ~in[1] & in[2]) | (in[0] & in[1] & ~in[2] )  ;


endmodule
