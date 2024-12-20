`timescale 1ns / 1ps

module tb_HA();
  reg A;
  reg B;
  wire Sum;
  wire Carry;
  
  HA half_adder(
    .A		(A),
    .B		(B),
    .Sum	(Sum),
    .Carry	(Carry)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_HA);
    A = 1'b0; B=1'b0; #10
    A = 1'b0; B=1'b1; #10
    A = 1'b1; B=1'b0; #10
    A = 1'b1; B=1'b1; #10
    #10 $finish;
  end

endmodule
