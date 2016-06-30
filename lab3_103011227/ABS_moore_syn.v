/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Apr 18 23:49:38 2016
/////////////////////////////////////////////////////////////


module ABS_moore ( rst, clk, timeIn, wheel, unlock );
  input rst, clk, timeIn, wheel;
  output unlock;
  wire   n1, n4, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23;
  wire   [4:0] state;
  wire   [4:0] next_state;

  CLKINVX1 U3 ( .A(rst), .Y(n1) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1), .Q(state[1])
         );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1), .Q(state[2]), 
        .QN(n21) );
  DFFRX1 \state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(n1), .Q(state[3]), 
        .QN(n23) );
  DFFRX1 \state_reg[4]  ( .D(next_state[4]), .CK(clk), .RN(n1), .Q(state[4]), 
        .QN(n22) );
  DFFSX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .SN(n1), .Q(state[0])
         );
  OAI22XL U28 ( .A0(n7), .A1(n13), .B0(n12), .B1(n14), .Y(next_state[1]) );
  NOR2X1 U29 ( .A(n12), .B(n7), .Y(next_state[2]) );
  AND3X2 U30 ( .A(n10), .B(n12), .C(n11), .Y(n18) );
  CLKINVX1 U31 ( .A(n15), .Y(n7) );
  CLKINVX1 U32 ( .A(n11), .Y(unlock) );
  AOI33X1 U33 ( .A0(n16), .A1(n13), .A2(n18), .B0(n14), .B1(n7), .B2(n4), .Y(
        n17) );
  NAND4X1 U34 ( .A(n20), .B(state[4]), .C(n21), .D(n23), .Y(n16) );
  CLKINVX1 U35 ( .A(n12), .Y(n4) );
  NAND4BX1 U36 ( .AN(state[0]), .B(state[1]), .C(n19), .D(n21), .Y(n12) );
  NOR2X1 U37 ( .A(state[1]), .B(state[0]), .Y(n20) );
  NOR4X1 U38 ( .A(state[2]), .B(state[1]), .C(state[0]), .D(n9), .Y(
        next_state[4]) );
  AOI33X1 U39 ( .A0(n23), .A1(n8), .A2(state[4]), .B0(state[3]), .B1(n22), 
        .B2(timeIn), .Y(n9) );
  NAND3X1 U40 ( .A(n19), .B(n20), .C(state[2]), .Y(n11) );
  NAND4BX1 U41 ( .AN(state[1]), .B(state[0]), .C(n19), .D(n21), .Y(n13) );
  NOR2X1 U42 ( .A(state[4]), .B(state[3]), .Y(n19) );
  NAND4X1 U43 ( .A(n20), .B(state[3]), .C(n21), .D(n22), .Y(n10) );
  OAI21XL U44 ( .A0(timeIn), .A1(n10), .B0(n11), .Y(next_state[3]) );
  NOR2X1 U45 ( .A(n8), .B(wheel), .Y(n15) );
  NAND2BX1 U46 ( .AN(wheel), .B(n8), .Y(n14) );
  CLKINVX1 U47 ( .A(timeIn), .Y(n8) );
  OAI221XL U48 ( .A0(n15), .A1(n13), .B0(n8), .B1(n16), .C0(n17), .Y(
        next_state[0]) );
endmodule

