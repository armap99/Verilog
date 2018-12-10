`timescale 1ps/1ps

module Sum_instancia4b
(
	input [3:0]A,
	input[3:0]B,
	input Cn,
	output [3:0]S,
	output Co
);
wire co_ce_ss1;//acarreo de salida del primer sumador y acarreo de entrada del 2
wire co_ce_ss2;//acarreo de salida del segundo sumador y acarreo de entrada del 3
wire co_ce_ss3;//acarreo de salida del tercer sumador y acarreo de entrada del 4
FA sumador_intan_1(
.bit_1(A[0]),
.bit_2(B[0]),
.cae(Cn),
.su(S[0]),
.cas(co_ce_ss1)
);
FA sumador_intan_2(
.bit_1(A[1]),
.bit_2(B[1]),
.cae(co_ce_ss1),
.su(S[1]),
.cas(co_ce_ss2)
);
FA sumador_intan_3(
.bit_1(A[2]),
.bit_2(B[2]),
.cae(co_ce_ss2),
.su(S[2]),
.cas(co_ce_ss3)
);
FA sumador_intan_4(
.bit_1(A[3]),
.bit_2(B[3]),
.cae(co_ce_ss3),
.su(S[3]),
.cas(Co)
);
endmodule 