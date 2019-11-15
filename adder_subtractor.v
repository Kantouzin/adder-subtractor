module adder_subtractor (
  input  wire [3:0] A,
  input  wire [3:0] B,
  input  wire SUB, U,
  output wire [3:0] S,
  output wire V );

  wire C[3:0];

  full_adder f1 (
    .A(A[0]), .B(B[0]^SUB), .X(SUB),
    .S(S[0]), .C(C[0])
  );
  full_adder f2 (
    .A(A[1]), .B(B[1]^SUB), .X(C[0]),
    .S(S[1]), .C(C[1])
  );
  full_adder f3 (
    .A(A[2]), .B(B[2]^SUB), .X(C[1]),
    .S(S[2]), .C(C[2])
  );
  full_adder f4 (
    .A(A[3]), .B(B[3]^SUB), .X(C[2]),
    .S(S[3]), .C(C[3])
  );

  assign V = (~U & ~SUB & ~A[3] & ~B[3] &  S[3])
           | (~U & ~SUB &  A[3] &  B[3] & ~S[3])
           | (~U &  SUB & ~A[3] &  B[3] &  S[3])
           | (~U &  SUB &  A[3] & ~B[3] & ~S[3])
           | ( U & ~SUB &  C[3])
           | ( U &  SUB & ~C[3]);
endmodule
