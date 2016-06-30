module test;

	// Declare your input regs and output wires here
    reg [3:0]in;
    wire p;
	// Initiate your modules here
    prime test(in,p);  
    // Your always block (You can use multiple always blocks as you want)

	// Your initial block 

	 initial begin
	 in=0;
	repeat(16)begin
	#10
	$display("input= %d,out= %b",in,p);
	in=in+1;
	end

	$finish;

	end

endmodule


