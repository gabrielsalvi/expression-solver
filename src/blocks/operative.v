`include "../components/alu.v"
`include "../components/mux.v"
`include "../components/register.v"

module operative 
(
    input clk,
    input [7:0] input_X,
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    input LX,
    input LS,
    input LH,
    input H,
    input [1:0] M0,
    input [1:0] M1,
    input [1:0] M2,
    output zero,
    output overflow,
    output [15:0] result
);

    parameter z = 16'b0000000000000000;
    wire [15:0] X, Reg_X, Reg_S, Reg_H, M0_out, M1_out, M2_out, ula_out;

    assign X = input_X + z;

    mux mux_0 (M0, z, A, B, C, M0_out);
    mux mux_1 (M1, M0_out, Reg_X, Reg_S, Reg_H, M1_out);
    mux mux_2 (M2, Reg_S, M0_out, Reg_S, Reg_H, M2_out);

    register reg_x (clk, rst, LX, X, Reg_X);
    register reg_s (clk, rst, LS, ula_out, Reg_S);
    register reg_h (clk, rst, LH, ula_out, Reg_H);

    alu alu_0 (H, A, B, ula_out);

    assign result = Reg_S;
    assign zero = result ? 1'b0 : 1'b1;

endmodule