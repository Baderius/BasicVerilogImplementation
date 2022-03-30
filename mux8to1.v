module mux8to1(Z, I7, I6, I5, I4, I3, I2, I1, I0, S2, S1, S0);

output reg Z;
input I7, I6, I5, I4, I3, I2, I1, I0;
input S2, S1, S0;

always @(I7, I6, I5, I4, I3, I2, I1, I0, S2, S1, S0) begin
	case ({S2,S1,S0})
		3'b000: Z <= I0;
		3'b001: Z <= I1;
		3'b010: Z <= I2;
		3'b011: Z <= I3;
		3'b100: Z <= I4;
		3'b101: Z <= I5;
		3'b110: Z <= I6;
		3'b111: Z <= I7;
		default: Z <= 3'bxxx;
	endcase
end

endmodule