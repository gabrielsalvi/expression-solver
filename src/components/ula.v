module ula (
    input h,
    input [15:0] a,
    input [15:0] b,
    output [15:0] result
);

    assign result = h ? a * b : a + b;

endmodule