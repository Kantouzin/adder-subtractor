`timescale 1ns/1ps
module adder_subtractor_tb;
  reg  [3:0] A,B;
  reg        SUB,U;
  wire [3:0] S;
  wire       V;
  adder_subtractor i1 (
    .A(A),
    .B(B),
    .SUB(SUB),
    .U(U),
    .S(S),
    .V(V)
  );
  integer i,j;
  initial begin
    #0 A = 0; B = 0; SUB = 0; U = 1; // add unsigned
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        #1 A = i; B = j;
      end
    end
    #1 A = 0; B = 0; SUB = 1; // sub unsigned
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        #1 A = i; B = j;
      end
    end
    #1 A = 0; B = 0; SUB = 0; U = 0; // add signed
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        #1 A = i; B = j;
      end
    end
    #1 A = 0; B = 0; SUB = 1; // sub signed
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        #1 A = i; B = j;
      end
    end
    #1 $stop;
  end
endmodule
