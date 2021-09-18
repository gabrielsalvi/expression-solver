`include "../components/full_adder.v"

module alu (
    input h,
    input signed [15:0] a,
    input signed [15:0] b,
    output reg overflow,
    output reg signed [15:0] result
);

    reg carry_in = 0;
    wire carry_out;
    wire signed [15:0] adderOut;

    full_adder adder(a, b, carry_in, carry_out, adderOut);

    always @(a or b or h) 
    begin
        if (h == 0) begin
            result <= adderOut;
            overflow <= ~(a[15] ^ b[15]) & (a[15] ^ adderOut[15]);
        end else begin
            result <= a * b;
        end
    end
endmodule