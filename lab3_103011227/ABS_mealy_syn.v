/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Apr 18 23:48:45 2016
/////////////////////////////////////////////////////////////


module ABS_mealy ( rst, clk, timeIn, wheel, unlock );
  input rst, clk, timeIn, wheel;
  output unlock;
  wire   n1, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21;
  wire   [3:0] state;
  wire   [2:0] next_state;

  DFFSX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .SN(n1), .Q(state[0]), 
        .QN(n19) );
  CLKINVX1 U3 ( .A(rst), .Y(n1) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1), .Q(state[2]), 
        .QN(n20) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1), .Q(state[1]), 
        .QN(n21) );
  CLKINVX1 U26 ( .A(n12), .Y(n5) );
  NAND3X1 U27 ( .A(n5), .B(n7), .C(state[1]), .Y(n18) );
  NAND2X1 U28 ( .A(n9), .B(n10), .Y(next_state[2]) );
  NAND4X1 U29 ( .A(state[2]), .B(n19), .C(n21), .D(n6), .Y(n10) );
  NAND4X1 U30 ( .A(state[0]), .B(timeIn), .C(state[1]), .D(n20), .Y(n9) );
  NOR2X1 U31 ( .A(n11), .B(state[2]), .Y(next_state[1]) );
  AOI32XL U32 ( .A0(state[0]), .A1(n21), .A2(n12), .B0(state[1]), .B1(n13), 
        .Y(n11) );
  OAI22XL U33 ( .A0(state[0]), .A1(n5), .B0(timeIn), .B1(n14), .Y(n13) );
  NOR2X1 U34 ( .A(state[0]), .B(n7), .Y(n14) );
  OAI211X1 U35 ( .A0(n15), .A1(n19), .B0(n16), .C0(n17), .Y(next_state[0]) );
  OAI21XL U36 ( .A0(state[1]), .A1(timeIn), .B0(state[2]), .Y(n16) );
  OA21XL U37 ( .A0(n7), .A1(state[1]), .B0(timeIn), .Y(n15) );
  NAND3X1 U38 ( .A(n20), .B(n18), .C(n19), .Y(n17) );
  NOR4XL U39 ( .A(n8), .B(n6), .C(state[0]), .D(n21), .Y(unlock) );
  NAND2X1 U40 ( .A(n7), .B(n20), .Y(n8) );
  NOR2X1 U41 ( .A(n6), .B(wheel), .Y(n12) );
  CLKINVX1 U42 ( .A(timeIn), .Y(n6) );
  CLKINVX1 U43 ( .A(wheel), .Y(n7) );
endmodule

