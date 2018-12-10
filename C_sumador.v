`timescale 1ps/1ps
module C_sumador
(
input i_bit1,i_bit2,c_in,
output c,suma
);
wire w_xor_xor=i_bit1 ^ i_bit2;
wire w_and_or=i_bit1 & i_bit2;
assign suma=w_xor_xor ^ c;
wire w_and_or2=w_xor_xor & c;
assign c=w_and_or | w_and_or2; 

endmodule 