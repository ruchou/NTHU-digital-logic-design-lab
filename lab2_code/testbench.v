 `define SDFFILE   "./ALU.sdf"
module stimulus ;
	reg  signed [31:0]  a, b;
	reg                 cin;
	reg         [3:0]   FuncSel;
	wire signed [31:0]  y ;
	wire                c_o, z_o, n_o, v_o;
	integer count = 0;
	ALU e0( a, b, cin, FuncSel, y, c_o, n_o, z_o, v_o);
	
	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE,e0);
			$fsdbDumpfile("ALU_syn.fsdb");
		`else
			$fsdbDumpfile("ALU.fsdb");
		`endif
		$fsdbDumpvars;
	end
	
	initial begin 
		FuncSel = 4'b0000;// Y = A
		a = 32'b00000000_00000000_00001010_10101111 ;
		b = 32'b00000000_00000000_00000000_10101100 ;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o );

		FuncSel = 4'b0001;// Y = B
		a = 32'b00000000_00000000_00001010_10101111 ;
		b = 32'b00000000_00000000_00000000_10101100 ;
		cin = 0;
		#5 
		if (y == 32'b00000000_00000000_00000000_10101100)
			count = count + 1;
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o );

		FuncSel = 4'b0010;// Y = A + B
		a = 32'b01000000000000000000000000000000;
		b = 32'b01000000000000000000000000000000;
		cin = 0;
		#5
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 
		
		FuncSel = 4'b0010;// Y = A + B
		a = 32'd50;
		b = 32'd17;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0010;// Y = A + B
		a = 32'd0;
		b = 32'd0;
		cin = 0;
		#5
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0011;// Y = A + B + Cin
		a = 32'd1;
		b = 32'b11111111111111110000000000001010;
		cin = 1;
		#5
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0100;// Y = A + B(s)
		a = 32'b01000000000000000000000000000001;
		b = 32'b01000000000000000000000000000001;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0100;// Y = A + B(s)
		a = 32'b10000000000000000000000000000001;
		b = 32'b10000000000000000000000000000001;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0101;// Y = A - B
		a = 32'd199;
		b = 32'd999;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0101;// Y = A - B
		a = 32'd999;
		b = 32'd999;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0110;// Y = A - B(s)
		a = 32'b01111111_11111111_11111111_11111111 ;
		b = 32'b11111111_11111111_11111111_11000000 ;
		cin = 0;
		#5
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0110;// Y = A - B(s)
		a = 32'b11111111_11111111_11111111_11111110 ;
		b = 32'b01111111_11111111_11111111_11111111 ;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b0111;// Y = A & B
		a = 32'b00000000_00000000_00001010_10101111 ;
		b = 32'b00000000_00000000_00000000_10101100 ;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1000;// Y = A | B
		a = 32'b00000011_00000000_00001010_10101111 ;
		b = 32'b00000000_00111000_00001010_10101111 ;
		cin = 0;
		#5
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1001;// Y = A ^ B
		a = 32'b00010001111111110001111111111111;
		b = 32'b00000000000000000000000000000001;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1010;// Y = ~A
		a = 32'b11111111111111111111111111111111;
		b = 32'b00000000000000000000000000000000;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1011;// Y = A<<1'b1(logic)
		a = 32'b00010101010101010101010101010101;
		b = 32'b00101010101010101010101010101010;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1011;// Y = A<<1'b1(logic)
		a = 32'b10010101010101010101010101010101;
		b = 32'b00101010101010101010101010101010;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1100;// Y = A<<1'b1(arithmetic)
		a = 32'b11100000000000000000000000000000;
		b = 32'b11000000000000000000000000000000;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 
		
		FuncSel = 4'b1100;// Y = A<<1'b1(arithmetic)
		a = 32'b01100000000000000000000000000000;
		b = 32'b11000000000000000000000000000000;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 
		
		
		FuncSel = 4'b1100;// Y = A<<1'b1(arithmetic)
		a = 32'b10100000000000000000000000000000;
		b = 32'b01000000000000000000000000000000;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 
		
		

		FuncSel = 4'b1101;// Y = A>>1'b1(logic)
		a = 32'b11010101010101010101010000000011;
		b = 32'b01101010101010101010101000000001;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1101;// Y = A>>1'b1(logic)
		a = 32'b00000000000000000101011101010101;
		b = 32'b00000000000000000010101110101010;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1110;// Y = A>>1'b1(arithmetic)
		a = 32'b11010101010101010101010101010101;
		b = 32'b11101010101010101010101010101010;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 

		FuncSel = 4'b1110;// Y = A>>1'b1(arithmetic)
		a = 32'b10000000000000000000000000000010;
		b = 32'b11000000000000000000000000000001;
		cin = 0;
		#5 
		$display("\n\nFuncSel=%3b\nA=%b(%d)\nB=%b(%d) Cin=%b |\nY=%b(%d) C=%b Z=%b N=%b V=%b  ", FuncSel, a, a, b, b, cin, y, y, c_o, z_o, n_o, v_o ); 
		
	end
endmodule
