module Adder32(A,B,Cin,C,Y,overflow);
	parameter n=32;
	
	input [n-1:0]A,B;
	input Cin;
	output C;
	output [n-1:0]Y;
    output overflow;
    wire [n-1:0] p= A^B;
    wire [n-1:0] g= A & B;
    wire [n:0] c={g | (p & c[n-1:0]),Cin};
    wire [n-1:0] Y= p ^ c[n-1:0];
    wire C=c[n];
    
    assign overflow= c[n] ^ c[n-1];

	
	
endmodule
