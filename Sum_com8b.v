`timescale 1ps/1ps

module Sum_com8b
(
	input [7:0]A,
	input [7:0]B,
	input C_in,
	output [7:0]S,
	output Co
);
wire [8:0]re;
assign re=A+B+C_in;
assign S=re[7:0];
assign Co=re[8];

endmodule 