`include "../main/expression_solver.v"

module testbench;

    reg clk;
    reg rst;
    reg start;
    wire zero, overflow, completed;
    wire [15:0] result;

    parameter [7:0] X = 8'b00001111; // 15
    parameter [15:0] A = 16'b0000000001100000; // 96
    parameter [15:0] B = 16'b0000000000000011; // 3
    parameter [15:0] C = 16'b0000000000000001; // 1

    // AX² + BX + C
    expression_solver solver (clk, rst, start, X, A, B, C, result, zero, overflow, completed);

    always #1 clk <= ~clk;

    initial
    begin
        $dumpvars;
        #1
        rst <= 1;

        #1
        rst <= 0;

        #1
        clk <= 1;

        #2
        start <= 1;

        #20
        rst <= 1;

        #5
        rst <= 0;

        #20

        $finish;  
    end
endmodule