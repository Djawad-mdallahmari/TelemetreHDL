module ConditioAfficheur(distance,unit,diz,cent,led);

input[7:0] distance;
output reg[3:0] unit,diz,cent;
output reg led;

always@(distance)
begin
	led <= (distance <= 15 ? 1:0);
	unit <= distance % 10;
	diz <= (distance / 10) % 10;
	cent <= (distance / 100);
end
endmodule