`timescale 1ns/1ns
module full_adder_tb;
  reg a, b, carry0;
  wire sum, carry1;
  
  full_adder f_a (a, b, carry0, sum, carry1);
  
  initial begin
    a = 0; b = 0; carry0 = 0;
	#50
	$finish;
  end
  
  always #5 a = ~a;
  always #7 b = ~b;
  always #3 carry0 = ~carry0;
endmodule