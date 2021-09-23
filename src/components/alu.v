module alu (
    input h,
    input [15:0] a,
    input [15:0] b,
    output overflow,
    output [15:0] result
);

    assign {overflow, result} = h ? a * b : a + b;

endmodule