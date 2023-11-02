module full_adder (input a, b, carry0, output sum, carry1);
  wire s1, c1, s2, c2;
  
  half_adder ha1 (a, b, s1, c1);
  half_adder ha2 (carry0, s1, sum, c2);
  
  assign cout = c1 | c2;
endmodule