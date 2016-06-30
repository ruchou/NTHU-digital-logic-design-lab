`define EXPone   "./test_mealy.dat"
`define EXPtwo   "./test_moore.dat"
`define SDFFILEone   "./ABS_mealy.sdf"
`define SDFFILEtwo   "./ABS_moore.sdf"
module stimulus ;
	parameter n = 4;
	parameter cyc = 2;
	parameter data_num = 2080;
	parameter delay = cyc/2;
	parameter delta = 0.2;
	integer i;
	integer match_mealy = 0;
	integer match_moore = 0;
	integer all = 0;
	reg [n-1:0] memory_mealy[0:data_num-1];
	reg [n-1:0] memory_moore[0:data_num-1];
	reg clk, rst, timer, wheel, result_mealy, result_moore;
	wire out_mealy, out_moore;
	
	ABS_mealy a0(
		.rst(rst), 
		.clk(clk), 
		.timeIn(timer), 
		.wheel(wheel),
		.unlock(out_mealy)
	);
	
	ABS_moore a1(
		.rst(rst), 
		.clk(clk), 
		.timeIn(timer), 
		.wheel(wheel),
		.unlock(out_moore)
	);
	
	always #(cyc/2) clk = ~clk;
	
	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILEone,a0);
			$sdf_annotate(`SDFFILEtwo,a1);
			$fsdbDumpfile("ABS_syn.fsdb");
		`else
			$fsdbDumpfile("ABS.fsdb");
		`endif
		$fsdbDumpvars;
	end
	
	initial begin
		rst = 1'b0;
		clk = 1'b1;
		wheel = 1'b0;
		timer = 1'b0;
		#(cyc);
		#(delay) rst = 1;
		#(cyc*4) rst = 0;
		#(delay);
		#(delta);
		$readmemb(`EXPone, memory_mealy);
		$readmemb(`EXPtwo, memory_moore);
		for (i = 0; i < data_num; i = i + 1) begin
			instru_mealy(memory_mealy[i]);
			instru_moore(memory_moore[i]);
			#(delay);
			if (out_mealy == result_mealy)begin
				match_mealy = match_mealy + 1;
			end else begin
				$display("\nMealy part wrong at %d data, real answer is : %d", i+1, result_mealy);
			end
			if (out_moore == result_moore)begin
				match_moore = match_moore + 1;
			end else begin
				$display("\nMoore part wrong at %d data, real answer is : %d", i+1, result_moore);
			end
			#(delay);
		end
		$display("---------------------------------------------------------");
		$display("\n\nMealy machine- Match / Total: %d / %d", match_mealy, data_num);
		$display("Moore machine- Match / Total: %d / %d\n\n", match_moore, data_num);
		$display("---------------------------------------------------------");
		$finish;
	end
	
	task instru_mealy;
		input [n-1:0] micro_instr;
		begin
			#(0) rst = micro_instr[n-1];
			     timer = micro_instr[n-2];
			     wheel = micro_instr[n-3];
				 result_mealy = micro_instr[n-4];     
		end
	endtask
	
	
	task instru_moore;
		input [n-1:0] micro_instr;
		begin
			#(0)result_moore = micro_instr[n-4];     
		end
	endtask
	
endmodule
