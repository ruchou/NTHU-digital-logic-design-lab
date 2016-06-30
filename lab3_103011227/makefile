HEAD		=header.v
VLOG		=ncverilog

SRC			=ABS_moore.v\
			ABS_mealy.v\
			testbench.v

SRC_syn		 =ABS_mealy_syn.v\
			ABS_moore_syn.v\
			testbench.v\
			-v /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v
			
SDF			=+define+SDF

TMPFILE		=*.log\
			 INCA_libs

RM 			=-rm -rf

VLOGARG     =+access+r\

all :: sim
sim :
		$(VLOG) $(HEAD) $(SRC) $(VLOGARG)
syn :
		$(VLOG) $(HEAD) $(SRC_syn) $(SDF) $(VLOGARG)
check :
		$(VLOG) -c $(SRC)
clean :
		$(RM) $(TMPFILE)