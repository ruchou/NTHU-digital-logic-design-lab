/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Mar 21 16:33:46 2016
/////////////////////////////////////////////////////////////


module Adder32 ( A, B, Cin, C, Y, overflow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Y;
  input Cin;
  output C, overflow;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93;

  XNOR2X1 U1 ( .A(n1), .B(C), .Y(overflow) );
  XOR2X1 U2 ( .A(n2), .B(n3), .Y(Y[9]) );
  XOR2X1 U3 ( .A(n4), .B(n5), .Y(Y[8]) );
  XOR2X1 U4 ( .A(n6), .B(n7), .Y(Y[7]) );
  XOR2X1 U5 ( .A(n8), .B(n9), .Y(Y[6]) );
  XOR2X1 U6 ( .A(n10), .B(n11), .Y(Y[5]) );
  XOR2X1 U7 ( .A(n12), .B(n13), .Y(Y[4]) );
  XOR2X1 U8 ( .A(n14), .B(n15), .Y(Y[3]) );
  XOR2X1 U9 ( .A(n16), .B(n1), .Y(Y[31]) );
  XOR2X1 U10 ( .A(n17), .B(n18), .Y(Y[30]) );
  XOR2X1 U11 ( .A(n19), .B(n20), .Y(Y[2]) );
  XOR2X1 U12 ( .A(n21), .B(n22), .Y(Y[29]) );
  XOR2X1 U13 ( .A(n23), .B(n24), .Y(Y[28]) );
  XOR2X1 U14 ( .A(n25), .B(n26), .Y(Y[27]) );
  XOR2X1 U15 ( .A(n27), .B(n28), .Y(Y[26]) );
  XOR2X1 U16 ( .A(n29), .B(n30), .Y(Y[25]) );
  XOR2X1 U17 ( .A(n31), .B(n32), .Y(Y[24]) );
  XOR2X1 U18 ( .A(n33), .B(n34), .Y(Y[23]) );
  XOR2X1 U19 ( .A(n35), .B(n36), .Y(Y[22]) );
  XOR2X1 U20 ( .A(n37), .B(n38), .Y(Y[21]) );
  XOR2X1 U21 ( .A(n39), .B(n40), .Y(Y[20]) );
  XOR2X1 U22 ( .A(n41), .B(n42), .Y(Y[1]) );
  XOR2X1 U23 ( .A(n43), .B(n44), .Y(Y[19]) );
  XOR2X1 U24 ( .A(n45), .B(n46), .Y(Y[18]) );
  XOR2X1 U25 ( .A(n47), .B(n48), .Y(Y[17]) );
  XOR2X1 U26 ( .A(n49), .B(n50), .Y(Y[16]) );
  XOR2X1 U27 ( .A(n51), .B(n52), .Y(Y[15]) );
  XOR2X1 U28 ( .A(n53), .B(n54), .Y(Y[14]) );
  XOR2X1 U29 ( .A(n55), .B(n56), .Y(Y[13]) );
  XOR2X1 U30 ( .A(n57), .B(n58), .Y(Y[12]) );
  XOR2X1 U31 ( .A(n59), .B(n60), .Y(Y[11]) );
  XOR2X1 U32 ( .A(n61), .B(n62), .Y(Y[10]) );
  XOR2X1 U33 ( .A(Cin), .B(n63), .Y(Y[0]) );
  OAI2BB2XL U34 ( .B0(n1), .B1(n16), .A0N(B[31]), .A1N(A[31]), .Y(C) );
  XNOR2X1 U35 ( .A(A[31]), .B(B[31]), .Y(n16) );
  OA21XL U36 ( .A0(n18), .A1(n17), .B0(n64), .Y(n1) );
  OAI21XL U37 ( .A0(B[30]), .A1(A[30]), .B0(n64), .Y(n17) );
  NAND2X1 U38 ( .A(B[30]), .B(A[30]), .Y(n64) );
  OA21XL U39 ( .A0(n22), .A1(n21), .B0(n65), .Y(n18) );
  OAI21XL U40 ( .A0(B[29]), .A1(A[29]), .B0(n65), .Y(n21) );
  NAND2X1 U41 ( .A(B[29]), .B(A[29]), .Y(n65) );
  OA21XL U42 ( .A0(n24), .A1(n23), .B0(n66), .Y(n22) );
  OAI21XL U43 ( .A0(B[28]), .A1(A[28]), .B0(n66), .Y(n23) );
  NAND2X1 U44 ( .A(B[28]), .B(A[28]), .Y(n66) );
  OA21XL U45 ( .A0(n26), .A1(n25), .B0(n67), .Y(n24) );
  OAI21XL U46 ( .A0(B[27]), .A1(A[27]), .B0(n67), .Y(n25) );
  NAND2X1 U47 ( .A(B[27]), .B(A[27]), .Y(n67) );
  OA21XL U48 ( .A0(n28), .A1(n27), .B0(n68), .Y(n26) );
  OAI21XL U49 ( .A0(B[26]), .A1(A[26]), .B0(n68), .Y(n27) );
  NAND2X1 U50 ( .A(B[26]), .B(A[26]), .Y(n68) );
  OA21XL U51 ( .A0(n30), .A1(n29), .B0(n69), .Y(n28) );
  OAI21XL U52 ( .A0(B[25]), .A1(A[25]), .B0(n69), .Y(n29) );
  NAND2X1 U53 ( .A(B[25]), .B(A[25]), .Y(n69) );
  OA21XL U54 ( .A0(n32), .A1(n31), .B0(n70), .Y(n30) );
  OAI21XL U55 ( .A0(B[24]), .A1(A[24]), .B0(n70), .Y(n31) );
  NAND2X1 U56 ( .A(B[24]), .B(A[24]), .Y(n70) );
  OA21XL U57 ( .A0(n34), .A1(n33), .B0(n71), .Y(n32) );
  OAI21XL U58 ( .A0(B[23]), .A1(A[23]), .B0(n71), .Y(n33) );
  NAND2X1 U59 ( .A(B[23]), .B(A[23]), .Y(n71) );
  OA21XL U60 ( .A0(n36), .A1(n35), .B0(n72), .Y(n34) );
  OAI21XL U61 ( .A0(B[22]), .A1(A[22]), .B0(n72), .Y(n35) );
  NAND2X1 U62 ( .A(B[22]), .B(A[22]), .Y(n72) );
  OA21XL U63 ( .A0(n38), .A1(n37), .B0(n73), .Y(n36) );
  OAI21XL U64 ( .A0(B[21]), .A1(A[21]), .B0(n73), .Y(n37) );
  NAND2X1 U65 ( .A(B[21]), .B(A[21]), .Y(n73) );
  OA21XL U66 ( .A0(n40), .A1(n39), .B0(n74), .Y(n38) );
  OAI21XL U67 ( .A0(B[20]), .A1(A[20]), .B0(n74), .Y(n39) );
  NAND2X1 U68 ( .A(B[20]), .B(A[20]), .Y(n74) );
  OA21XL U69 ( .A0(n44), .A1(n43), .B0(n75), .Y(n40) );
  OAI21XL U70 ( .A0(B[19]), .A1(A[19]), .B0(n75), .Y(n43) );
  NAND2X1 U71 ( .A(B[19]), .B(A[19]), .Y(n75) );
  OA21XL U72 ( .A0(n46), .A1(n45), .B0(n76), .Y(n44) );
  OAI21XL U73 ( .A0(B[18]), .A1(A[18]), .B0(n76), .Y(n45) );
  NAND2X1 U74 ( .A(B[18]), .B(A[18]), .Y(n76) );
  OA21XL U75 ( .A0(n48), .A1(n47), .B0(n77), .Y(n46) );
  OAI21XL U76 ( .A0(B[17]), .A1(A[17]), .B0(n77), .Y(n47) );
  NAND2X1 U77 ( .A(B[17]), .B(A[17]), .Y(n77) );
  OA21XL U78 ( .A0(n50), .A1(n49), .B0(n78), .Y(n48) );
  OAI21XL U79 ( .A0(B[16]), .A1(A[16]), .B0(n78), .Y(n49) );
  NAND2X1 U80 ( .A(B[16]), .B(A[16]), .Y(n78) );
  OA21XL U81 ( .A0(n52), .A1(n51), .B0(n79), .Y(n50) );
  OAI21XL U82 ( .A0(B[15]), .A1(A[15]), .B0(n79), .Y(n51) );
  NAND2X1 U83 ( .A(B[15]), .B(A[15]), .Y(n79) );
  OA21XL U84 ( .A0(n54), .A1(n53), .B0(n80), .Y(n52) );
  OAI21XL U85 ( .A0(B[14]), .A1(A[14]), .B0(n80), .Y(n53) );
  NAND2X1 U86 ( .A(B[14]), .B(A[14]), .Y(n80) );
  OA21XL U87 ( .A0(n56), .A1(n55), .B0(n81), .Y(n54) );
  OAI21XL U88 ( .A0(B[13]), .A1(A[13]), .B0(n81), .Y(n55) );
  NAND2X1 U89 ( .A(B[13]), .B(A[13]), .Y(n81) );
  OA21XL U90 ( .A0(n58), .A1(n57), .B0(n82), .Y(n56) );
  OAI21XL U91 ( .A0(B[12]), .A1(A[12]), .B0(n82), .Y(n57) );
  NAND2X1 U92 ( .A(B[12]), .B(A[12]), .Y(n82) );
  OA21XL U93 ( .A0(n60), .A1(n59), .B0(n83), .Y(n58) );
  OAI21XL U94 ( .A0(B[11]), .A1(A[11]), .B0(n83), .Y(n59) );
  NAND2X1 U95 ( .A(B[11]), .B(A[11]), .Y(n83) );
  OA21XL U96 ( .A0(n62), .A1(n61), .B0(n84), .Y(n60) );
  OAI21XL U97 ( .A0(B[10]), .A1(A[10]), .B0(n84), .Y(n61) );
  NAND2X1 U98 ( .A(B[10]), .B(A[10]), .Y(n84) );
  OA21XL U99 ( .A0(n3), .A1(n2), .B0(n85), .Y(n62) );
  OAI21XL U100 ( .A0(B[9]), .A1(A[9]), .B0(n85), .Y(n2) );
  NAND2X1 U101 ( .A(B[9]), .B(A[9]), .Y(n85) );
  OA21XL U102 ( .A0(n5), .A1(n4), .B0(n86), .Y(n3) );
  OAI21XL U103 ( .A0(B[8]), .A1(A[8]), .B0(n86), .Y(n4) );
  NAND2X1 U104 ( .A(B[8]), .B(A[8]), .Y(n86) );
  OA21XL U105 ( .A0(n7), .A1(n6), .B0(n87), .Y(n5) );
  OAI21XL U106 ( .A0(B[7]), .A1(A[7]), .B0(n87), .Y(n6) );
  NAND2X1 U107 ( .A(B[7]), .B(A[7]), .Y(n87) );
  OA21XL U108 ( .A0(n9), .A1(n8), .B0(n88), .Y(n7) );
  OAI21XL U109 ( .A0(B[6]), .A1(A[6]), .B0(n88), .Y(n8) );
  NAND2X1 U110 ( .A(B[6]), .B(A[6]), .Y(n88) );
  OA21XL U111 ( .A0(n11), .A1(n10), .B0(n89), .Y(n9) );
  OAI21XL U112 ( .A0(B[5]), .A1(A[5]), .B0(n89), .Y(n10) );
  NAND2X1 U113 ( .A(B[5]), .B(A[5]), .Y(n89) );
  OA21XL U114 ( .A0(n13), .A1(n12), .B0(n90), .Y(n11) );
  OAI21XL U115 ( .A0(B[4]), .A1(A[4]), .B0(n90), .Y(n12) );
  NAND2X1 U116 ( .A(B[4]), .B(A[4]), .Y(n90) );
  OA21XL U117 ( .A0(n15), .A1(n14), .B0(n91), .Y(n13) );
  OAI21XL U118 ( .A0(B[3]), .A1(A[3]), .B0(n91), .Y(n14) );
  NAND2X1 U119 ( .A(B[3]), .B(A[3]), .Y(n91) );
  OA21XL U120 ( .A0(n20), .A1(n19), .B0(n92), .Y(n15) );
  OAI21XL U121 ( .A0(B[2]), .A1(A[2]), .B0(n92), .Y(n19) );
  NAND2X1 U122 ( .A(B[2]), .B(A[2]), .Y(n92) );
  OA21XL U123 ( .A0(n42), .A1(n41), .B0(n93), .Y(n20) );
  OAI21XL U124 ( .A0(B[1]), .A1(A[1]), .B0(n93), .Y(n41) );
  NAND2X1 U125 ( .A(B[1]), .B(A[1]), .Y(n93) );
  AOI22X1 U126 ( .A0(n63), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n42) );
  XOR2X1 U127 ( .A(A[0]), .B(B[0]), .Y(n63) );
endmodule


module ALU_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  ADDHXL U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHXL U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHXL U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHXL U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHXL U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHXL U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHXL U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHXL U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHXL U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHXL U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHXL U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
endmodule


module ALU ( A, B, Cin, FS, Y, C, N, Z, V );
  input [31:0] A;
  input [31:0] B;
  input [3:0] FS;
  output [31:0] Y;
  input Cin;
  output C, N, Z, V;
  wire   cin_value, cout, overflow, N129, N130, N131, N132, N133, N134, N135,
         N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146,
         N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157,
         N158, N159, N160, N354, N355, N357, N358, N359, N360, N361, N362,
         N363, N364, N365, N366, N367, N368, N369, N370, N371, N372, N373,
         N374, N375, N376, N377, N378, N379, N380, N381, N382, N383, N384,
         N385, N386, N387, N388, N389, N390, N391, n298, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614;
  wire   [31:0] a_value;
  wire   [31:0] b_value;
  wire   [31:0] add_result;

  Adder32 add ( .A(a_value), .B(b_value), .Cin(cin_value), .C(cout), .Y(
        add_result), .overflow(overflow) );
  ALU_DW01_inc_0 r308 ( .A({n583, n584, n585, n586, n587, n588, n589, n590, 
        n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, 
        n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614}), .SUM({N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, 
        N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, 
        N137, N136, N135, N134, N133, N132, N131, N130, N129}) );
  TLATNXL \b_value_reg[31]  ( .D(N388), .GN(n298), .Q(b_value[31]) );
  TLATNXL \a_value_reg[30]  ( .D(A[30]), .GN(n298), .Q(a_value[30]) );
  TLATNXL \a_value_reg[29]  ( .D(A[29]), .GN(n298), .Q(a_value[29]) );
  TLATNXL \a_value_reg[28]  ( .D(A[28]), .GN(n298), .Q(a_value[28]) );
  TLATNXL \a_value_reg[27]  ( .D(A[27]), .GN(n298), .Q(a_value[27]) );
  TLATNXL \a_value_reg[26]  ( .D(A[26]), .GN(n298), .Q(a_value[26]) );
  TLATNXL \a_value_reg[25]  ( .D(A[25]), .GN(n298), .Q(a_value[25]) );
  TLATNXL \a_value_reg[24]  ( .D(A[24]), .GN(n298), .Q(a_value[24]) );
  TLATNXL \a_value_reg[23]  ( .D(A[23]), .GN(n298), .Q(a_value[23]) );
  TLATNXL \a_value_reg[22]  ( .D(A[22]), .GN(n298), .Q(a_value[22]) );
  TLATNXL \a_value_reg[21]  ( .D(A[21]), .GN(n298), .Q(a_value[21]) );
  TLATNXL \a_value_reg[20]  ( .D(A[20]), .GN(n298), .Q(a_value[20]) );
  TLATNXL \a_value_reg[19]  ( .D(A[19]), .GN(n298), .Q(a_value[19]) );
  TLATNXL \a_value_reg[18]  ( .D(A[18]), .GN(n298), .Q(a_value[18]) );
  TLATNXL \a_value_reg[17]  ( .D(A[17]), .GN(n298), .Q(a_value[17]) );
  TLATNXL \a_value_reg[16]  ( .D(A[16]), .GN(n298), .Q(a_value[16]) );
  TLATNXL \a_value_reg[15]  ( .D(A[15]), .GN(n298), .Q(a_value[15]) );
  TLATNXL \a_value_reg[14]  ( .D(A[14]), .GN(n298), .Q(a_value[14]) );
  TLATNXL \a_value_reg[13]  ( .D(A[13]), .GN(n298), .Q(a_value[13]) );
  TLATNXL \a_value_reg[12]  ( .D(A[12]), .GN(n298), .Q(a_value[12]) );
  TLATNXL \a_value_reg[11]  ( .D(A[11]), .GN(n298), .Q(a_value[11]) );
  TLATNXL \a_value_reg[10]  ( .D(A[10]), .GN(n298), .Q(a_value[10]) );
  TLATNXL \a_value_reg[9]  ( .D(A[9]), .GN(n298), .Q(a_value[9]) );
  TLATNXL \a_value_reg[8]  ( .D(A[8]), .GN(n298), .Q(a_value[8]) );
  TLATNXL \a_value_reg[7]  ( .D(A[7]), .GN(n298), .Q(a_value[7]) );
  TLATNXL \a_value_reg[6]  ( .D(A[6]), .GN(n298), .Q(a_value[6]) );
  TLATNXL \a_value_reg[5]  ( .D(A[5]), .GN(n298), .Q(a_value[5]) );
  TLATNXL \a_value_reg[4]  ( .D(A[4]), .GN(n298), .Q(a_value[4]) );
  TLATNXL \a_value_reg[3]  ( .D(A[3]), .GN(n298), .Q(a_value[3]) );
  TLATNXL \a_value_reg[2]  ( .D(A[2]), .GN(n298), .Q(a_value[2]) );
  TLATNXL \a_value_reg[1]  ( .D(A[1]), .GN(n298), .Q(a_value[1]) );
  TLATNXL \a_value_reg[31]  ( .D(A[31]), .GN(n298), .Q(a_value[31]) );
  TLATNXL \b_value_reg[30]  ( .D(N387), .GN(n298), .Q(b_value[30]) );
  TLATNXL \b_value_reg[29]  ( .D(N386), .GN(n298), .Q(b_value[29]) );
  TLATNXL \b_value_reg[28]  ( .D(N385), .GN(n298), .Q(b_value[28]) );
  TLATNXL \b_value_reg[27]  ( .D(N384), .GN(n298), .Q(b_value[27]) );
  TLATNXL \b_value_reg[26]  ( .D(N383), .GN(n298), .Q(b_value[26]) );
  TLATNXL \b_value_reg[25]  ( .D(N382), .GN(n298), .Q(b_value[25]) );
  TLATNXL \b_value_reg[24]  ( .D(N381), .GN(n298), .Q(b_value[24]) );
  TLATNXL \b_value_reg[23]  ( .D(N380), .GN(n298), .Q(b_value[23]) );
  TLATNXL \b_value_reg[22]  ( .D(N379), .GN(n298), .Q(b_value[22]) );
  TLATNXL \b_value_reg[21]  ( .D(N378), .GN(n298), .Q(b_value[21]) );
  TLATNXL \b_value_reg[20]  ( .D(N377), .GN(n298), .Q(b_value[20]) );
  TLATNXL \b_value_reg[19]  ( .D(N376), .GN(n298), .Q(b_value[19]) );
  TLATNXL \b_value_reg[18]  ( .D(N375), .GN(n298), .Q(b_value[18]) );
  TLATNXL \b_value_reg[17]  ( .D(N374), .GN(n298), .Q(b_value[17]) );
  TLATNXL \b_value_reg[16]  ( .D(N373), .GN(n298), .Q(b_value[16]) );
  TLATNXL \b_value_reg[15]  ( .D(N372), .GN(n298), .Q(b_value[15]) );
  TLATNXL \b_value_reg[14]  ( .D(N371), .GN(n298), .Q(b_value[14]) );
  TLATNXL \b_value_reg[13]  ( .D(N370), .GN(n298), .Q(b_value[13]) );
  TLATNXL \b_value_reg[12]  ( .D(N369), .GN(n298), .Q(b_value[12]) );
  TLATNXL \b_value_reg[11]  ( .D(N368), .GN(n298), .Q(b_value[11]) );
  TLATNXL \b_value_reg[10]  ( .D(N367), .GN(n298), .Q(b_value[10]) );
  TLATNXL \b_value_reg[9]  ( .D(N366), .GN(n298), .Q(b_value[9]) );
  TLATNXL \b_value_reg[8]  ( .D(N365), .GN(n298), .Q(b_value[8]) );
  TLATNXL \b_value_reg[7]  ( .D(N364), .GN(n298), .Q(b_value[7]) );
  TLATNXL \b_value_reg[6]  ( .D(N363), .GN(n298), .Q(b_value[6]) );
  TLATNXL \b_value_reg[5]  ( .D(N362), .GN(n298), .Q(b_value[5]) );
  TLATNXL \b_value_reg[4]  ( .D(N361), .GN(n298), .Q(b_value[4]) );
  TLATNXL \b_value_reg[3]  ( .D(N360), .GN(n298), .Q(b_value[3]) );
  TLATNXL \b_value_reg[2]  ( .D(N359), .GN(n298), .Q(b_value[2]) );
  TLATNXL \b_value_reg[1]  ( .D(N358), .GN(n298), .Q(b_value[1]) );
  TLATNXL \b_value_reg[0]  ( .D(N357), .GN(n298), .Q(b_value[0]) );
  TLATNXL \a_value_reg[0]  ( .D(A[0]), .GN(n298), .Q(a_value[0]) );
  TLATNXL cin_value_reg ( .D(N389), .GN(n298), .Q(cin_value) );
  TLATX1 V_reg ( .G(N390), .D(N391), .Q(V) );
  TLATX1 C_reg ( .G(N354), .D(N355), .Q(C) );
  NOR2BX4 U390 ( .AN(n569), .B(n568), .Y(n298) );
  NAND2X2 U391 ( .A(n321), .B(n574), .Y(n367) );
  OAI21X1 U392 ( .A0(n576), .A1(n562), .B0(n577), .Y(n568) );
  OAI211X4 U393 ( .A0(overflow), .A1(n562), .B0(n577), .C0(n578), .Y(n347) );
  INVX3 U394 ( .A(n557), .Y(n373) );
  AO21X2 U395 ( .A0(n414), .A1(n321), .B0(n570), .Y(n372) );
  NOR3X2 U396 ( .A(n562), .B(A[31]), .C(n563), .Y(n363) );
  OAI211X1 U397 ( .A0(n317), .A1(n318), .B0(n319), .C0(n320), .Y(Z) );
  AOI32X1 U398 ( .A0(FS[2]), .A1(FS[1]), .A2(n321), .B0(n322), .B1(n323), .Y(
        n320) );
  NOR4X1 U399 ( .A(n324), .B(n325), .C(A[6]), .D(A[5]), .Y(n323) );
  OR3X1 U400 ( .A(A[8]), .B(A[9]), .C(A[7]), .Y(n325) );
  OR4X1 U401 ( .A(A[30]), .B(A[31]), .C(A[3]), .D(A[4]), .Y(n324) );
  NOR4X1 U402 ( .A(n326), .B(n327), .C(A[27]), .D(A[26]), .Y(n322) );
  OR3X1 U403 ( .A(A[29]), .B(A[2]), .C(A[28]), .Y(n327) );
  OR4X1 U404 ( .A(n328), .B(A[23]), .C(A[24]), .D(A[25]), .Y(n326) );
  AOI2BB1X1 U405 ( .A0N(n329), .A1N(n330), .B0(n331), .Y(n328) );
  AOI211X1 U406 ( .A0(n332), .A1(n333), .B0(A[0]), .C0(n329), .Y(n331) );
  NAND4X1 U407 ( .A(n334), .B(n335), .C(n336), .D(n337), .Y(n329) );
  NOR4X1 U408 ( .A(A[22]), .B(A[21]), .C(A[20]), .D(A[1]), .Y(n337) );
  NOR3X1 U409 ( .A(A[17]), .B(A[19]), .C(A[18]), .Y(n336) );
  NOR4X1 U410 ( .A(A[16]), .B(A[15]), .C(A[14]), .D(A[13]), .Y(n335) );
  NOR3X1 U411 ( .A(A[10]), .B(A[12]), .C(A[11]), .Y(n334) );
  NAND4X1 U412 ( .A(n338), .B(n339), .C(n340), .D(n341), .Y(n319) );
  NOR4X1 U413 ( .A(n342), .B(n343), .C(n344), .D(n345), .Y(n341) );
  OR4X1 U414 ( .A(n346), .B(add_result[0]), .C(add_result[10]), .D(
        add_result[11]), .Y(n345) );
  CLKINVX1 U415 ( .A(n347), .Y(n346) );
  OR4X1 U416 ( .A(add_result[12]), .B(add_result[13]), .C(add_result[14]), .D(
        add_result[15]), .Y(n344) );
  OR4X1 U417 ( .A(add_result[16]), .B(add_result[17]), .C(add_result[18]), .D(
        add_result[19]), .Y(n343) );
  OR4X1 U418 ( .A(add_result[1]), .B(add_result[20]), .C(add_result[21]), .D(
        add_result[22]), .Y(n342) );
  NOR4X1 U419 ( .A(n348), .B(n349), .C(add_result[6]), .D(add_result[5]), .Y(
        n340) );
  OR3X1 U420 ( .A(add_result[8]), .B(add_result[9]), .C(add_result[7]), .Y(
        n349) );
  OR4X1 U421 ( .A(add_result[30]), .B(add_result[31]), .C(add_result[3]), .D(
        add_result[4]), .Y(n348) );
  NOR4X1 U422 ( .A(add_result[2]), .B(add_result[29]), .C(add_result[28]), .D(
        add_result[27]), .Y(n339) );
  NOR4X1 U423 ( .A(add_result[26]), .B(add_result[25]), .C(add_result[24]), 
        .D(add_result[23]), .Y(n338) );
  NAND4X1 U424 ( .A(n350), .B(n351), .C(n352), .D(n353), .Y(n318) );
  NOR4X1 U425 ( .A(B[22]), .B(B[21]), .C(B[20]), .D(B[1]), .Y(n353) );
  NOR4X1 U426 ( .A(B[19]), .B(B[18]), .C(B[17]), .D(B[16]), .Y(n352) );
  NOR4X1 U427 ( .A(B[15]), .B(B[14]), .C(B[13]), .D(B[12]), .Y(n351) );
  NOR4X1 U428 ( .A(B[11]), .B(B[10]), .C(B[0]), .D(n354), .Y(n350) );
  NAND4X1 U429 ( .A(n355), .B(n356), .C(n357), .D(n358), .Y(n317) );
  NOR4X1 U430 ( .A(n359), .B(B[7]), .C(B[9]), .D(B[8]), .Y(n358) );
  NAND2X1 U431 ( .A(n609), .B(n608), .Y(n359) );
  NOR4X1 U432 ( .A(B[4]), .B(B[3]), .C(B[31]), .D(B[30]), .Y(n357) );
  NOR4X1 U433 ( .A(B[2]), .B(B[29]), .C(B[28]), .D(B[27]), .Y(n356) );
  NOR4X1 U434 ( .A(B[26]), .B(B[25]), .C(B[24]), .D(B[23]), .Y(n355) );
  NAND3X1 U435 ( .A(n360), .B(n361), .C(n362), .Y(Y[9]) );
  AOI211X1 U436 ( .A0(add_result[9]), .A1(n347), .B0(n363), .C0(n364), .Y(n362) );
  OA21XL U437 ( .A0(n365), .A1(n366), .B0(B[9]), .Y(n364) );
  MXI2X1 U438 ( .A(n367), .B(n368), .S0(A[9]), .Y(n366) );
  MXI2X1 U439 ( .A(n369), .B(n370), .S0(A[9]), .Y(n361) );
  OAI21XL U440 ( .A0(B[9]), .A1(n367), .B0(n371), .Y(n370) );
  AOI22X1 U441 ( .A0(n372), .A1(A[8]), .B0(n373), .B1(A[10]), .Y(n360) );
  NAND3X1 U442 ( .A(n374), .B(n375), .C(n376), .Y(Y[8]) );
  AOI211X1 U443 ( .A0(add_result[8]), .A1(n347), .B0(n363), .C0(n377), .Y(n376) );
  OA21XL U444 ( .A0(n365), .A1(n378), .B0(B[8]), .Y(n377) );
  MXI2X1 U445 ( .A(n367), .B(n368), .S0(A[8]), .Y(n378) );
  MXI2X1 U446 ( .A(n369), .B(n379), .S0(A[8]), .Y(n375) );
  OAI21XL U447 ( .A0(B[8]), .A1(n367), .B0(n371), .Y(n379) );
  AOI22X1 U448 ( .A0(n372), .A1(A[7]), .B0(n373), .B1(A[9]), .Y(n374) );
  NAND3X1 U449 ( .A(n380), .B(n381), .C(n382), .Y(Y[7]) );
  AOI211X1 U450 ( .A0(add_result[7]), .A1(n347), .B0(n363), .C0(n383), .Y(n382) );
  OA21XL U451 ( .A0(n365), .A1(n384), .B0(B[7]), .Y(n383) );
  MXI2X1 U452 ( .A(n367), .B(n368), .S0(A[7]), .Y(n384) );
  MXI2X1 U453 ( .A(n369), .B(n385), .S0(A[7]), .Y(n381) );
  OAI21XL U454 ( .A0(B[7]), .A1(n367), .B0(n371), .Y(n385) );
  AOI22X1 U455 ( .A0(n372), .A1(A[6]), .B0(n373), .B1(A[8]), .Y(n380) );
  NAND3X1 U456 ( .A(n386), .B(n387), .C(n388), .Y(Y[6]) );
  AOI211X1 U457 ( .A0(add_result[6]), .A1(n347), .B0(n363), .C0(n389), .Y(n388) );
  OA21XL U458 ( .A0(n365), .A1(n390), .B0(B[6]), .Y(n389) );
  MXI2X1 U459 ( .A(n367), .B(n368), .S0(A[6]), .Y(n390) );
  MXI2X1 U460 ( .A(n369), .B(n391), .S0(A[6]), .Y(n387) );
  OAI21XL U461 ( .A0(B[6]), .A1(n367), .B0(n371), .Y(n391) );
  AOI22X1 U462 ( .A0(n372), .A1(A[5]), .B0(n373), .B1(A[7]), .Y(n386) );
  NAND3X1 U463 ( .A(n392), .B(n393), .C(n394), .Y(Y[5]) );
  AOI211X1 U464 ( .A0(add_result[5]), .A1(n347), .B0(n363), .C0(n395), .Y(n394) );
  OA21XL U465 ( .A0(n365), .A1(n396), .B0(B[5]), .Y(n395) );
  MXI2X1 U466 ( .A(n367), .B(n368), .S0(A[5]), .Y(n396) );
  MXI2X1 U467 ( .A(n369), .B(n397), .S0(A[5]), .Y(n393) );
  OAI21XL U468 ( .A0(B[5]), .A1(n367), .B0(n371), .Y(n397) );
  AOI22X1 U469 ( .A0(n372), .A1(A[4]), .B0(n373), .B1(A[6]), .Y(n392) );
  NAND3X1 U470 ( .A(n398), .B(n399), .C(n400), .Y(Y[4]) );
  AOI211X1 U471 ( .A0(add_result[4]), .A1(n347), .B0(n363), .C0(n401), .Y(n400) );
  OA21XL U472 ( .A0(n365), .A1(n402), .B0(B[4]), .Y(n401) );
  MXI2X1 U473 ( .A(n367), .B(n368), .S0(A[4]), .Y(n402) );
  MXI2X1 U474 ( .A(n369), .B(n403), .S0(A[4]), .Y(n399) );
  OAI21XL U475 ( .A0(B[4]), .A1(n367), .B0(n371), .Y(n403) );
  AOI22X1 U476 ( .A0(n372), .A1(A[3]), .B0(n373), .B1(A[5]), .Y(n398) );
  NAND3X1 U477 ( .A(n404), .B(n405), .C(n406), .Y(Y[3]) );
  AOI211X1 U478 ( .A0(add_result[3]), .A1(n347), .B0(n363), .C0(n407), .Y(n406) );
  OA21XL U479 ( .A0(n365), .A1(n408), .B0(B[3]), .Y(n407) );
  MXI2X1 U480 ( .A(n367), .B(n368), .S0(A[3]), .Y(n408) );
  MXI2X1 U481 ( .A(n369), .B(n409), .S0(A[3]), .Y(n405) );
  OAI21XL U482 ( .A0(B[3]), .A1(n367), .B0(n371), .Y(n409) );
  AOI22X1 U483 ( .A0(n372), .A1(A[2]), .B0(n373), .B1(A[4]), .Y(n404) );
  NAND4X1 U484 ( .A(n410), .B(n411), .C(n412), .D(n413), .Y(Y[31]) );
  NAND3X1 U485 ( .A(n321), .B(n414), .C(A[30]), .Y(n413) );
  OAI21XL U486 ( .A0(n365), .A1(n415), .B0(B[31]), .Y(n412) );
  MXI2X1 U487 ( .A(n367), .B(n368), .S0(A[31]), .Y(n415) );
  MXI2X1 U488 ( .A(n369), .B(n416), .S0(A[31]), .Y(n411) );
  OAI21XL U489 ( .A0(B[31]), .A1(n367), .B0(n417), .Y(n416) );
  NAND3X1 U490 ( .A(n418), .B(n419), .C(n420), .Y(Y[30]) );
  AOI211X1 U491 ( .A0(add_result[30]), .A1(n347), .B0(n363), .C0(n421), .Y(
        n420) );
  OA21XL U492 ( .A0(n365), .A1(n422), .B0(B[30]), .Y(n421) );
  MXI2X1 U493 ( .A(n367), .B(n368), .S0(A[30]), .Y(n422) );
  MXI2X1 U494 ( .A(n369), .B(n423), .S0(A[30]), .Y(n419) );
  OAI21XL U495 ( .A0(B[30]), .A1(n367), .B0(n371), .Y(n423) );
  AOI22X1 U496 ( .A0(n372), .A1(A[29]), .B0(n373), .B1(A[31]), .Y(n418) );
  NAND3X1 U497 ( .A(n424), .B(n425), .C(n426), .Y(Y[2]) );
  AOI211X1 U498 ( .A0(add_result[2]), .A1(n347), .B0(n363), .C0(n427), .Y(n426) );
  OA21XL U499 ( .A0(n365), .A1(n428), .B0(B[2]), .Y(n427) );
  MXI2X1 U500 ( .A(n367), .B(n368), .S0(A[2]), .Y(n428) );
  MXI2X1 U501 ( .A(n369), .B(n429), .S0(A[2]), .Y(n425) );
  OAI21XL U502 ( .A0(B[2]), .A1(n367), .B0(n371), .Y(n429) );
  AOI22X1 U503 ( .A0(n372), .A1(A[1]), .B0(n373), .B1(A[3]), .Y(n424) );
  NAND3X1 U504 ( .A(n430), .B(n431), .C(n432), .Y(Y[29]) );
  AOI211X1 U505 ( .A0(add_result[29]), .A1(n347), .B0(n363), .C0(n433), .Y(
        n432) );
  OA21XL U506 ( .A0(n365), .A1(n434), .B0(B[29]), .Y(n433) );
  MXI2X1 U507 ( .A(n367), .B(n368), .S0(A[29]), .Y(n434) );
  MXI2X1 U508 ( .A(n369), .B(n435), .S0(A[29]), .Y(n431) );
  OAI21XL U509 ( .A0(B[29]), .A1(n367), .B0(n371), .Y(n435) );
  AOI22X1 U510 ( .A0(n372), .A1(A[28]), .B0(n373), .B1(A[30]), .Y(n430) );
  NAND3X1 U511 ( .A(n436), .B(n437), .C(n438), .Y(Y[28]) );
  AOI211X1 U512 ( .A0(add_result[28]), .A1(n347), .B0(n363), .C0(n439), .Y(
        n438) );
  OA21XL U513 ( .A0(n365), .A1(n440), .B0(B[28]), .Y(n439) );
  MXI2X1 U514 ( .A(n367), .B(n368), .S0(A[28]), .Y(n440) );
  MXI2X1 U515 ( .A(n369), .B(n441), .S0(A[28]), .Y(n437) );
  OAI21XL U516 ( .A0(B[28]), .A1(n367), .B0(n371), .Y(n441) );
  AOI22X1 U517 ( .A0(n372), .A1(A[27]), .B0(n373), .B1(A[29]), .Y(n436) );
  NAND3X1 U518 ( .A(n442), .B(n443), .C(n444), .Y(Y[27]) );
  AOI211X1 U519 ( .A0(add_result[27]), .A1(n347), .B0(n363), .C0(n445), .Y(
        n444) );
  OA21XL U520 ( .A0(n365), .A1(n446), .B0(B[27]), .Y(n445) );
  MXI2X1 U521 ( .A(n367), .B(n368), .S0(A[27]), .Y(n446) );
  MXI2X1 U522 ( .A(n369), .B(n447), .S0(A[27]), .Y(n443) );
  OAI21XL U523 ( .A0(B[27]), .A1(n367), .B0(n371), .Y(n447) );
  AOI22X1 U524 ( .A0(n372), .A1(A[26]), .B0(n373), .B1(A[28]), .Y(n442) );
  NAND3X1 U525 ( .A(n448), .B(n449), .C(n450), .Y(Y[26]) );
  AOI211X1 U526 ( .A0(add_result[26]), .A1(n347), .B0(n363), .C0(n451), .Y(
        n450) );
  OA21XL U527 ( .A0(n365), .A1(n452), .B0(B[26]), .Y(n451) );
  MXI2X1 U528 ( .A(n367), .B(n368), .S0(A[26]), .Y(n452) );
  MXI2X1 U529 ( .A(n369), .B(n453), .S0(A[26]), .Y(n449) );
  OAI21XL U530 ( .A0(B[26]), .A1(n367), .B0(n371), .Y(n453) );
  AOI22X1 U531 ( .A0(n372), .A1(A[25]), .B0(n373), .B1(A[27]), .Y(n448) );
  NAND3X1 U532 ( .A(n454), .B(n455), .C(n456), .Y(Y[25]) );
  AOI211X1 U533 ( .A0(add_result[25]), .A1(n347), .B0(n363), .C0(n457), .Y(
        n456) );
  OA21XL U534 ( .A0(n365), .A1(n458), .B0(B[25]), .Y(n457) );
  MXI2X1 U535 ( .A(n367), .B(n368), .S0(A[25]), .Y(n458) );
  MXI2X1 U536 ( .A(n369), .B(n459), .S0(A[25]), .Y(n455) );
  OAI21XL U537 ( .A0(B[25]), .A1(n367), .B0(n371), .Y(n459) );
  AOI22X1 U538 ( .A0(n372), .A1(A[24]), .B0(n373), .B1(A[26]), .Y(n454) );
  NAND3X1 U539 ( .A(n460), .B(n461), .C(n462), .Y(Y[24]) );
  AOI211X1 U540 ( .A0(add_result[24]), .A1(n347), .B0(n363), .C0(n463), .Y(
        n462) );
  OA21XL U541 ( .A0(n365), .A1(n464), .B0(B[24]), .Y(n463) );
  MXI2X1 U542 ( .A(n367), .B(n368), .S0(A[24]), .Y(n464) );
  MXI2X1 U543 ( .A(n369), .B(n465), .S0(A[24]), .Y(n461) );
  OAI21XL U544 ( .A0(B[24]), .A1(n367), .B0(n371), .Y(n465) );
  AOI22X1 U545 ( .A0(n372), .A1(A[23]), .B0(n373), .B1(A[25]), .Y(n460) );
  NAND3X1 U546 ( .A(n466), .B(n467), .C(n468), .Y(Y[23]) );
  AOI211X1 U547 ( .A0(add_result[23]), .A1(n347), .B0(n363), .C0(n469), .Y(
        n468) );
  OA21XL U548 ( .A0(n365), .A1(n470), .B0(B[23]), .Y(n469) );
  MXI2X1 U549 ( .A(n367), .B(n368), .S0(A[23]), .Y(n470) );
  MXI2X1 U550 ( .A(n369), .B(n471), .S0(A[23]), .Y(n467) );
  OAI21XL U551 ( .A0(B[23]), .A1(n367), .B0(n371), .Y(n471) );
  AOI22X1 U552 ( .A0(n372), .A1(A[22]), .B0(n373), .B1(A[24]), .Y(n466) );
  NAND3X1 U553 ( .A(n472), .B(n473), .C(n474), .Y(Y[22]) );
  AOI211X1 U554 ( .A0(add_result[22]), .A1(n347), .B0(n363), .C0(n475), .Y(
        n474) );
  OA21XL U555 ( .A0(n365), .A1(n476), .B0(B[22]), .Y(n475) );
  MXI2X1 U556 ( .A(n367), .B(n368), .S0(A[22]), .Y(n476) );
  MXI2X1 U557 ( .A(n369), .B(n477), .S0(A[22]), .Y(n473) );
  OAI21XL U558 ( .A0(B[22]), .A1(n367), .B0(n371), .Y(n477) );
  AOI22X1 U559 ( .A0(n372), .A1(A[21]), .B0(n373), .B1(A[23]), .Y(n472) );
  NAND3X1 U560 ( .A(n478), .B(n479), .C(n480), .Y(Y[21]) );
  AOI211X1 U561 ( .A0(add_result[21]), .A1(n347), .B0(n363), .C0(n481), .Y(
        n480) );
  OA21XL U562 ( .A0(n365), .A1(n482), .B0(B[21]), .Y(n481) );
  MXI2X1 U563 ( .A(n367), .B(n368), .S0(A[21]), .Y(n482) );
  MXI2X1 U564 ( .A(n369), .B(n483), .S0(A[21]), .Y(n479) );
  OAI21XL U565 ( .A0(B[21]), .A1(n367), .B0(n371), .Y(n483) );
  AOI22X1 U566 ( .A0(n372), .A1(A[20]), .B0(n373), .B1(A[22]), .Y(n478) );
  NAND3X1 U567 ( .A(n484), .B(n485), .C(n486), .Y(Y[20]) );
  AOI211X1 U568 ( .A0(add_result[20]), .A1(n347), .B0(n363), .C0(n487), .Y(
        n486) );
  OA21XL U569 ( .A0(n365), .A1(n488), .B0(B[20]), .Y(n487) );
  MXI2X1 U570 ( .A(n367), .B(n368), .S0(A[20]), .Y(n488) );
  MXI2X1 U571 ( .A(n369), .B(n489), .S0(A[20]), .Y(n485) );
  OAI21XL U572 ( .A0(B[20]), .A1(n367), .B0(n371), .Y(n489) );
  AOI22X1 U573 ( .A0(n372), .A1(A[19]), .B0(n373), .B1(A[21]), .Y(n484) );
  NAND3X1 U574 ( .A(n490), .B(n491), .C(n492), .Y(Y[1]) );
  AOI211X1 U575 ( .A0(add_result[1]), .A1(n347), .B0(n363), .C0(n493), .Y(n492) );
  OA21XL U576 ( .A0(n365), .A1(n494), .B0(B[1]), .Y(n493) );
  MXI2X1 U577 ( .A(n368), .B(n367), .S0(n495), .Y(n494) );
  MXI2X1 U578 ( .A(n496), .B(n369), .S0(n495), .Y(n491) );
  OAI21XL U579 ( .A0(B[1]), .A1(n367), .B0(n371), .Y(n496) );
  AOI22X1 U580 ( .A0(n372), .A1(A[0]), .B0(n373), .B1(A[2]), .Y(n490) );
  NAND3X1 U581 ( .A(n497), .B(n498), .C(n499), .Y(Y[19]) );
  AOI211X1 U582 ( .A0(add_result[19]), .A1(n347), .B0(n363), .C0(n500), .Y(
        n499) );
  OA21XL U583 ( .A0(n365), .A1(n501), .B0(B[19]), .Y(n500) );
  MXI2X1 U584 ( .A(n367), .B(n368), .S0(A[19]), .Y(n501) );
  MXI2X1 U585 ( .A(n369), .B(n502), .S0(A[19]), .Y(n498) );
  OAI21XL U586 ( .A0(B[19]), .A1(n367), .B0(n371), .Y(n502) );
  AOI22X1 U587 ( .A0(n372), .A1(A[18]), .B0(n373), .B1(A[20]), .Y(n497) );
  NAND3X1 U588 ( .A(n503), .B(n504), .C(n505), .Y(Y[18]) );
  AOI211X1 U589 ( .A0(add_result[18]), .A1(n347), .B0(n363), .C0(n506), .Y(
        n505) );
  OA21XL U590 ( .A0(n365), .A1(n507), .B0(B[18]), .Y(n506) );
  MXI2X1 U591 ( .A(n367), .B(n368), .S0(A[18]), .Y(n507) );
  MXI2X1 U592 ( .A(n369), .B(n508), .S0(A[18]), .Y(n504) );
  OAI21XL U593 ( .A0(B[18]), .A1(n367), .B0(n371), .Y(n508) );
  AOI22X1 U594 ( .A0(n372), .A1(A[17]), .B0(n373), .B1(A[19]), .Y(n503) );
  NAND3X1 U595 ( .A(n509), .B(n510), .C(n511), .Y(Y[17]) );
  AOI211X1 U596 ( .A0(add_result[17]), .A1(n347), .B0(n363), .C0(n512), .Y(
        n511) );
  OA21XL U597 ( .A0(n365), .A1(n513), .B0(B[17]), .Y(n512) );
  MXI2X1 U598 ( .A(n367), .B(n368), .S0(A[17]), .Y(n513) );
  MXI2X1 U599 ( .A(n369), .B(n514), .S0(A[17]), .Y(n510) );
  OAI21XL U600 ( .A0(B[17]), .A1(n367), .B0(n371), .Y(n514) );
  AOI22X1 U601 ( .A0(n372), .A1(A[16]), .B0(n373), .B1(A[18]), .Y(n509) );
  NAND3X1 U602 ( .A(n515), .B(n516), .C(n517), .Y(Y[16]) );
  AOI211X1 U603 ( .A0(add_result[16]), .A1(n347), .B0(n363), .C0(n518), .Y(
        n517) );
  OA21XL U604 ( .A0(n365), .A1(n519), .B0(B[16]), .Y(n518) );
  MXI2X1 U605 ( .A(n367), .B(n368), .S0(A[16]), .Y(n519) );
  MXI2X1 U606 ( .A(n369), .B(n520), .S0(A[16]), .Y(n516) );
  OAI21XL U607 ( .A0(B[16]), .A1(n367), .B0(n371), .Y(n520) );
  AOI22X1 U608 ( .A0(n372), .A1(A[15]), .B0(n373), .B1(A[17]), .Y(n515) );
  NAND3X1 U609 ( .A(n521), .B(n522), .C(n523), .Y(Y[15]) );
  AOI211X1 U610 ( .A0(add_result[15]), .A1(n347), .B0(n363), .C0(n524), .Y(
        n523) );
  OA21XL U611 ( .A0(n365), .A1(n525), .B0(B[15]), .Y(n524) );
  MXI2X1 U612 ( .A(n367), .B(n368), .S0(A[15]), .Y(n525) );
  MXI2X1 U613 ( .A(n369), .B(n526), .S0(A[15]), .Y(n522) );
  OAI21XL U614 ( .A0(B[15]), .A1(n367), .B0(n371), .Y(n526) );
  AOI22X1 U615 ( .A0(n372), .A1(A[14]), .B0(n373), .B1(A[16]), .Y(n521) );
  NAND3X1 U616 ( .A(n527), .B(n528), .C(n529), .Y(Y[14]) );
  AOI211X1 U617 ( .A0(add_result[14]), .A1(n347), .B0(n363), .C0(n530), .Y(
        n529) );
  OA21XL U618 ( .A0(n365), .A1(n531), .B0(B[14]), .Y(n530) );
  MXI2X1 U619 ( .A(n367), .B(n368), .S0(A[14]), .Y(n531) );
  MXI2X1 U620 ( .A(n369), .B(n532), .S0(A[14]), .Y(n528) );
  OAI21XL U621 ( .A0(B[14]), .A1(n367), .B0(n371), .Y(n532) );
  AOI22X1 U622 ( .A0(n372), .A1(A[13]), .B0(n373), .B1(A[15]), .Y(n527) );
  NAND3X1 U623 ( .A(n533), .B(n534), .C(n535), .Y(Y[13]) );
  AOI211X1 U624 ( .A0(add_result[13]), .A1(n347), .B0(n363), .C0(n536), .Y(
        n535) );
  OA21XL U625 ( .A0(n365), .A1(n537), .B0(B[13]), .Y(n536) );
  MXI2X1 U626 ( .A(n367), .B(n368), .S0(A[13]), .Y(n537) );
  MXI2X1 U627 ( .A(n369), .B(n538), .S0(A[13]), .Y(n534) );
  OAI21XL U628 ( .A0(B[13]), .A1(n367), .B0(n371), .Y(n538) );
  AOI22X1 U629 ( .A0(n372), .A1(A[12]), .B0(n373), .B1(A[14]), .Y(n533) );
  NAND3X1 U630 ( .A(n539), .B(n540), .C(n541), .Y(Y[12]) );
  AOI211X1 U631 ( .A0(add_result[12]), .A1(n347), .B0(n363), .C0(n542), .Y(
        n541) );
  OA21XL U632 ( .A0(n365), .A1(n543), .B0(B[12]), .Y(n542) );
  MXI2X1 U633 ( .A(n367), .B(n368), .S0(A[12]), .Y(n543) );
  MXI2X1 U634 ( .A(n369), .B(n544), .S0(A[12]), .Y(n540) );
  OAI21XL U635 ( .A0(B[12]), .A1(n367), .B0(n371), .Y(n544) );
  AOI22X1 U636 ( .A0(n372), .A1(A[11]), .B0(n373), .B1(A[13]), .Y(n539) );
  NAND3X1 U637 ( .A(n545), .B(n546), .C(n547), .Y(Y[11]) );
  AOI211X1 U638 ( .A0(add_result[11]), .A1(n347), .B0(n363), .C0(n548), .Y(
        n547) );
  OA21XL U639 ( .A0(n365), .A1(n549), .B0(B[11]), .Y(n548) );
  MXI2X1 U640 ( .A(n367), .B(n368), .S0(A[11]), .Y(n549) );
  MXI2X1 U641 ( .A(n369), .B(n550), .S0(A[11]), .Y(n546) );
  OAI21XL U642 ( .A0(B[11]), .A1(n367), .B0(n371), .Y(n550) );
  AOI22X1 U643 ( .A0(n372), .A1(A[10]), .B0(n373), .B1(A[12]), .Y(n545) );
  NAND3X1 U644 ( .A(n551), .B(n552), .C(n553), .Y(Y[10]) );
  AOI211X1 U645 ( .A0(add_result[10]), .A1(n347), .B0(n363), .C0(n554), .Y(
        n553) );
  OA21XL U646 ( .A0(n365), .A1(n555), .B0(B[10]), .Y(n554) );
  MXI2X1 U647 ( .A(n367), .B(n368), .S0(A[10]), .Y(n555) );
  MXI2X1 U648 ( .A(n369), .B(n556), .S0(A[10]), .Y(n552) );
  OAI21XL U649 ( .A0(B[10]), .A1(n367), .B0(n371), .Y(n556) );
  AOI22X1 U650 ( .A0(n372), .A1(A[9]), .B0(n373), .B1(A[11]), .Y(n551) );
  OAI211X1 U651 ( .A0(n557), .A1(n495), .B0(n558), .C0(n559), .Y(Y[0]) );
  AOI211X1 U652 ( .A0(add_result[0]), .A1(n347), .B0(n363), .C0(n560), .Y(n559) );
  OA21XL U653 ( .A0(n365), .A1(n561), .B0(B[0]), .Y(n560) );
  MXI2X1 U654 ( .A(n367), .B(n368), .S0(A[0]), .Y(n561) );
  NAND2X1 U655 ( .A(n417), .B(n354), .Y(n365) );
  MXI2X1 U656 ( .A(n369), .B(n564), .S0(A[0]), .Y(n558) );
  OAI21XL U657 ( .A0(B[0]), .A1(n367), .B0(n371), .Y(n564) );
  AND2X1 U658 ( .A(n417), .B(n332), .Y(n371) );
  CLKINVX1 U659 ( .A(A[1]), .Y(n495) );
  OAI22XL U660 ( .A0(n298), .A1(n563), .B0(n565), .B1(n333), .Y(N391) );
  XNOR2X1 U661 ( .A(A[30]), .B(A[31]), .Y(n565) );
  CLKINVX1 U662 ( .A(n566), .Y(N390) );
  OA21XL U663 ( .A0(n567), .A1(n568), .B0(Cin), .Y(N389) );
  OAI2BB2XL U664 ( .B0(n583), .B1(n569), .A0N(N160), .A1N(n568), .Y(N388) );
  CLKINVX1 U665 ( .A(B[31]), .Y(n583) );
  OAI2BB2XL U666 ( .B0(n584), .B1(n569), .A0N(N159), .A1N(n568), .Y(N387) );
  CLKINVX1 U667 ( .A(B[30]), .Y(n584) );
  OAI2BB2XL U668 ( .B0(n585), .B1(n569), .A0N(N158), .A1N(n568), .Y(N386) );
  CLKINVX1 U669 ( .A(B[29]), .Y(n585) );
  OAI2BB2XL U670 ( .B0(n586), .B1(n569), .A0N(N157), .A1N(n568), .Y(N385) );
  CLKINVX1 U671 ( .A(B[28]), .Y(n586) );
  OAI2BB2XL U672 ( .B0(n587), .B1(n569), .A0N(N156), .A1N(n568), .Y(N384) );
  CLKINVX1 U673 ( .A(B[27]), .Y(n587) );
  OAI2BB2XL U674 ( .B0(n588), .B1(n569), .A0N(N155), .A1N(n568), .Y(N383) );
  CLKINVX1 U675 ( .A(B[26]), .Y(n588) );
  OAI2BB2XL U676 ( .B0(n589), .B1(n569), .A0N(N154), .A1N(n568), .Y(N382) );
  CLKINVX1 U677 ( .A(B[25]), .Y(n589) );
  OAI2BB2XL U678 ( .B0(n590), .B1(n569), .A0N(N153), .A1N(n568), .Y(N381) );
  CLKINVX1 U679 ( .A(B[24]), .Y(n590) );
  OAI2BB2XL U680 ( .B0(n591), .B1(n569), .A0N(N152), .A1N(n568), .Y(N380) );
  CLKINVX1 U681 ( .A(B[23]), .Y(n591) );
  OAI2BB2XL U682 ( .B0(n592), .B1(n569), .A0N(N151), .A1N(n568), .Y(N379) );
  CLKINVX1 U683 ( .A(B[22]), .Y(n592) );
  OAI2BB2XL U684 ( .B0(n593), .B1(n569), .A0N(N150), .A1N(n568), .Y(N378) );
  CLKINVX1 U685 ( .A(B[21]), .Y(n593) );
  OAI2BB2XL U686 ( .B0(n594), .B1(n569), .A0N(N149), .A1N(n568), .Y(N377) );
  CLKINVX1 U687 ( .A(B[20]), .Y(n594) );
  OAI2BB2XL U688 ( .B0(n595), .B1(n569), .A0N(N148), .A1N(n568), .Y(N376) );
  CLKINVX1 U689 ( .A(B[19]), .Y(n595) );
  OAI2BB2XL U690 ( .B0(n596), .B1(n569), .A0N(N147), .A1N(n568), .Y(N375) );
  CLKINVX1 U691 ( .A(B[18]), .Y(n596) );
  OAI2BB2XL U692 ( .B0(n597), .B1(n569), .A0N(N146), .A1N(n568), .Y(N374) );
  CLKINVX1 U693 ( .A(B[17]), .Y(n597) );
  OAI2BB2XL U694 ( .B0(n598), .B1(n569), .A0N(N145), .A1N(n568), .Y(N373) );
  CLKINVX1 U695 ( .A(B[16]), .Y(n598) );
  OAI2BB2XL U696 ( .B0(n599), .B1(n569), .A0N(N144), .A1N(n568), .Y(N372) );
  CLKINVX1 U697 ( .A(B[15]), .Y(n599) );
  OAI2BB2XL U698 ( .B0(n600), .B1(n569), .A0N(N143), .A1N(n568), .Y(N371) );
  CLKINVX1 U699 ( .A(B[14]), .Y(n600) );
  OAI2BB2XL U700 ( .B0(n601), .B1(n569), .A0N(N142), .A1N(n568), .Y(N370) );
  CLKINVX1 U701 ( .A(B[13]), .Y(n601) );
  OAI2BB2XL U702 ( .B0(n602), .B1(n569), .A0N(N141), .A1N(n568), .Y(N369) );
  CLKINVX1 U703 ( .A(B[12]), .Y(n602) );
  OAI2BB2XL U704 ( .B0(n603), .B1(n569), .A0N(N140), .A1N(n568), .Y(N368) );
  CLKINVX1 U705 ( .A(B[11]), .Y(n603) );
  OAI2BB2XL U706 ( .B0(n604), .B1(n569), .A0N(N139), .A1N(n568), .Y(N367) );
  CLKINVX1 U707 ( .A(B[10]), .Y(n604) );
  OAI2BB2XL U708 ( .B0(n605), .B1(n569), .A0N(N138), .A1N(n568), .Y(N366) );
  CLKINVX1 U709 ( .A(B[9]), .Y(n605) );
  OAI2BB2XL U710 ( .B0(n606), .B1(n569), .A0N(N137), .A1N(n568), .Y(N365) );
  CLKINVX1 U711 ( .A(B[8]), .Y(n606) );
  OAI2BB2XL U712 ( .B0(n607), .B1(n569), .A0N(N136), .A1N(n568), .Y(N364) );
  CLKINVX1 U713 ( .A(B[7]), .Y(n607) );
  OAI2BB2XL U714 ( .B0(n608), .B1(n569), .A0N(N135), .A1N(n568), .Y(N363) );
  CLKINVX1 U715 ( .A(B[6]), .Y(n608) );
  OAI2BB2XL U716 ( .B0(n609), .B1(n569), .A0N(N134), .A1N(n568), .Y(N362) );
  CLKINVX1 U717 ( .A(B[5]), .Y(n609) );
  OAI2BB2XL U718 ( .B0(n610), .B1(n569), .A0N(N133), .A1N(n568), .Y(N361) );
  CLKINVX1 U719 ( .A(B[4]), .Y(n610) );
  OAI2BB2XL U720 ( .B0(n611), .B1(n569), .A0N(N132), .A1N(n568), .Y(N360) );
  CLKINVX1 U721 ( .A(B[3]), .Y(n611) );
  OAI2BB2XL U722 ( .B0(n612), .B1(n569), .A0N(N131), .A1N(n568), .Y(N359) );
  CLKINVX1 U723 ( .A(B[2]), .Y(n612) );
  OAI2BB2XL U724 ( .B0(n613), .B1(n569), .A0N(N130), .A1N(n568), .Y(N358) );
  CLKINVX1 U725 ( .A(B[1]), .Y(n613) );
  OAI2BB2XL U726 ( .B0(n614), .B1(n569), .A0N(N129), .A1N(n568), .Y(N357) );
  CLKINVX1 U727 ( .A(B[0]), .Y(n614) );
  AO22X1 U728 ( .A0(A[31]), .A1(n570), .B0(cout), .B1(n571), .Y(N355) );
  NAND3X1 U729 ( .A(n354), .B(n566), .C(n332), .Y(N354) );
  NOR4X1 U730 ( .A(n372), .B(n373), .C(n571), .D(n572), .Y(n566) );
  NAND4BX1 U731 ( .AN(n369), .B(n368), .C(n367), .D(n417), .Y(n572) );
  NAND2X1 U732 ( .A(n573), .B(n574), .Y(n417) );
  NAND3X1 U733 ( .A(FS[2]), .B(FS[1]), .C(n575), .Y(n368) );
  AND2X1 U734 ( .A(n573), .B(n414), .Y(n369) );
  CLKINVX1 U735 ( .A(n298), .Y(n571) );
  NOR2BX1 U736 ( .AN(n578), .B(n567), .Y(n569) );
  OAI2BB2XL U737 ( .B0(FS[1]), .B1(n562), .A0N(n414), .A1N(n575), .Y(n567) );
  AOI31X1 U738 ( .A0(n321), .A1(n576), .A2(FS[2]), .B0(n579), .Y(n557) );
  CLKINVX1 U739 ( .A(n330), .Y(n579) );
  NOR2X1 U740 ( .A(n580), .B(n581), .Y(n321) );
  NAND2X1 U741 ( .A(n574), .B(n575), .Y(n354) );
  CLKINVX1 U742 ( .A(n410), .Y(N) );
  AOI222XL U743 ( .A0(n347), .A1(add_result[31]), .B0(n582), .B1(A[31]), .C0(
        n570), .C1(A[30]), .Y(n410) );
  CLKINVX1 U744 ( .A(n333), .Y(n570) );
  NAND3X1 U745 ( .A(FS[2]), .B(n576), .C(n573), .Y(n333) );
  OAI211X1 U746 ( .A0(n563), .A1(n562), .B0(n330), .C0(n332), .Y(n582) );
  NAND3X1 U747 ( .A(n581), .B(n580), .C(n574), .Y(n332) );
  NOR2X1 U748 ( .A(FS[2]), .B(FS[1]), .Y(n574) );
  NAND3X1 U749 ( .A(FS[2]), .B(FS[1]), .C(n573), .Y(n330) );
  NOR2X1 U750 ( .A(n580), .B(FS[0]), .Y(n573) );
  CLKINVX1 U751 ( .A(overflow), .Y(n563) );
  NAND2X1 U752 ( .A(n414), .B(n580), .Y(n578) );
  NOR2X1 U753 ( .A(n576), .B(FS[2]), .Y(n414) );
  NAND3X1 U754 ( .A(FS[2]), .B(n576), .C(n575), .Y(n577) );
  NOR2X1 U755 ( .A(n581), .B(FS[3]), .Y(n575) );
  CLKINVX1 U756 ( .A(FS[1]), .Y(n576) );
  NAND3X1 U757 ( .A(n581), .B(n580), .C(FS[2]), .Y(n562) );
  CLKINVX1 U758 ( .A(FS[3]), .Y(n580) );
  CLKINVX1 U759 ( .A(FS[0]), .Y(n581) );
endmodule

