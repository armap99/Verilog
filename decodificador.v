`timescale 1ps/1ps

module decodificador
(
input [1:0]in_op,
input en,
output reg [3:0]sal_deco
);

always @(*)
begin
	if(en==1)
	begin 
		case (in_op)
			2'b00:
				begin sal_deco=4'b0001; end //primera operacion
			2'b01:
				begin sal_deco=4'b0010; end //segunda operacion
			2'b10:
				begin sal_deco=4'b0100; end //tercera operacion
			2'b11:
				begin sal_deco=4'b1000; end //cuarta operacion
		endcase
		end
	else
	begin
		sal_deco<=4'b0000;
	end
end 
endmodule 