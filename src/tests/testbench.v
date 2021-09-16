`include "../main/expression_solver.v"

module testbench;

    reg clk;
    reg rst;
    reg start;
    wire zero, overflow, completed;
    wire [15:0] result;

    parameter [7:0] X = 8'b00001111;
    parameter [15:0] A = 16'b0000000001100000;
    parameter [15:0] B = 16'b0000000000000011;
    parameter [15:0] C = 16'b0000000000000001;

    expression_solver solver (clk, rst, start, X, A, B, C, result, zero, overflow, completed);

    always #1 begin
        clk <= ~clk;
    end

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

        $finish;  
    end
endmodule