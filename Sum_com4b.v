`timescale 1ps/1ps

module Sum_com4b
(
	input [3:0]A,
	input [3:0]B,
	input C_in,
	output [3:0]S,
	output Co
);
wire [4:0]re;
assign re=A+B+C_in;
assign S=re[3:0];
assign Co=re[4];

endmodule 