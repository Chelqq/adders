`timescale 1ns/1ns
module half_adder_tb ();
reg a, b;
wire sum, carry;

half_adder UUT(
.a(a), 
.b(b),
.sum(sum),
.carry(carry)
);

initial
	begin
	a = 0;
	b = 0;
	#100;
	a = 1;
	b = 0;
	#100;
	a = 0;
	b = 1;
	#100;
	a = 1;
	b = 1;	
$stop;
end

endmodule