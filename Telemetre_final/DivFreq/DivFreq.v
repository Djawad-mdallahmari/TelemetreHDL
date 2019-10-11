module DivFreq(clkin,clkout);

parameter NB_TON = 25;
parameter NB = 50;
parameter POLARITE = 0;
parameter BUS_SIZE = 16;

input clkin;
output clkout;
reg clkout;

reg[BUS_SIZE-1:0] i;

always@(negedge(clkin))
begin
	if (i<NB) 
	begin
		i <= i + 1;
	end
	else
	begin
		i <= 0;
	end
end

always@(i)
begin
	if (i<NB_TON) 
	begin
		clkout <= POLARITE;
	end
	else
	begin
		clkout <= ~POLARITE;
	end
end

endmodule 