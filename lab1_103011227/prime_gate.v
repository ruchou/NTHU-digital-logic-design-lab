module prime(in,p);
input [3:0]in;
wire  notin0,notin1,notin2,notin3;
wire end0,end1,end2,end3;
output p;

not x1(notin0,in[0]);
not x2(notin1,in[1]);
not x3(notin2,in[2]);
not x4(notin3,in[3]);

and x5(end0,in[0],notin3);
and x6(end1,in[1],notin2,notin3);
and x7(end2,in[0],notin1,in[2]);
and x8(end3,in[0],in[1],notin2);
or result(p,end0,end1,end2,end3);




endmodule
