module CalculDist(timeMicro,distancePouce);

input[15:0] timeMicro;
output reg[7:0] distancePouce;

always@(timeMicro)
begin
	distancePouce <= (timeMicro/1000) * (254/50);
end
endmodule