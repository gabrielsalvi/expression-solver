`include "../blocks/control.v" 
`include "../blocks/operative.v"

module expression_solver
(
    input clk,
    input rst,
    input start,
    input signed [7:0] X,
    input signed [15:0] A,
    input signed [15:0] B,
    input signed [15:0] C,
    output signed [15:0] result,
    output zero,
    output overflow,
    output completed
);

    wire LX, LS, LH, H;
    wire [1:0] M0, M1, M2;

    control control_block (clk, rst, start, LX, LS, LH, H, M0, M1, M2, completed);
    operative operative_block (clk, X, A, B, C, LX, LS, LH, H, M0, M1, M2, zero, overflow, result);
    
endmodule