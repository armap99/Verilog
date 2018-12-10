`timescale 1ps/1ps

module ALU
(
	input [15:0]A,
	input [15:0]B,
	output [16:0]s_suma,
	output [15:0]s_resta,
	output [15:0]s_division,
	output [31:0]s_multiplicacion,
	output [15:0]s_and,
	output [15:0]s_or,
	output [15:0]s_xor,
	output [15:0]s_nor
);
assign s_and=A & B;
assign s_or=A | B;
assign s_nor=~(A | B);
assign s_xor=A ^ B;
assign s_suma=A+B;
assign s_resta=A-B;
assign s_division=A/B;
assign s_multiplicacion=A*B;

endmodule 