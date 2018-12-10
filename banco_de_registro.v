`timescale 1ps/1ps

module banco_de_registro
(
input [4:0]dato_1,
input [4:0]dato_2,
input [4:0]direccion,
input w_r,//0 escritura    1 lectura
input [31:0]dato,//el dato que se ecribe
output reg [31:0]salida_1,
output reg [31:0]salida_2
);
reg [31:0]men[31:0];
always @(*)
begin 
	if(w_r==0)//escribir
	begin
		men[direccion]=dato;
	end
	
	//else
	//begin
		//salida_1=men[dato_1];
		//salida_2=men[dato_2];
	//end
end 
endmodule 