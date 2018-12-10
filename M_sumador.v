`timescale 1ps/1ps
module M_sumador
(
input i_bit1,i_bit2,
output c,suma
);
assign c=i_bit1 & i_bit2;
assign suma=i_bit1 ^ i_bit2;

endmodule 