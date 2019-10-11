module Afficheur7seg(E,oLow);

parameter POLARITE = 1; // 1: Anode commune 0: Cathode commune

input[3:0] E;

output [0:6] oLow;

reg[0:6] Low;

always @(E)
begin
	case (E)
						// abcdefg   	
		0 : Low <= 	7'b1111110;
		1 : Low <= 	7'b0110000;
		2 : Low <= 	7'b1101101;
		3 : Low <= 	7'b1111001;
		4 : Low <= 	7'b0110011;
		5 : Low <= 	7'b1011011;
		6 : Low <= 	7'b1011111;
		7 : Low <= 	7'b1110000;
		8 : Low <= 	7'b1111111;
		9 : Low <= 	7'b1111011;
		default: Low <= 7'b1111110;
	endcase
end

assign oLow = (POLARITE == 1)?~Low:Low;

endmodule

