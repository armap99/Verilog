`timescale 1ps/1ps

module Sum_instancia8b
(
	input [7:0]E_1,
	input [7:0]E_2,
	input Cu,//carri de entrada general
	output [7:0]S_F,
	output Cos
);
wire c_css1_ces2;//
Sum_instancia4b sum4b_inta_1(
.A(E_1[3:0]),
.B(E_2[3:0]),
.Cn(Cu),
.S(S_F[3:0]),
.Co(c_css1_ces2)
);
Sum_instancia4b sum4b_inta_2(
.A(E_1[7:4]),
.B(E_2[7:4]),
.Cn(c_css1_ces2),
.S(S_F[7:4]),
.Co(Cos)
);
endmodule 