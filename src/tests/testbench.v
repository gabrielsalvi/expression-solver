`include "../main/expression_solver.v"

module testbench;

    reg clk = 0;
    reg rst = 0;
    reg start = 1'b1;
    reg [7:0] X = 8'b00001111;
    reg [15:0] A = 16'b0000000001100000;
    reg [15:0] B = 16'b0000000000000011;
    reg [15:0] C = 16'b0000000000000001;

    wire zero, overflow, completed;
    wire [15:0] result;

    expression_solver solver (clk, rst, start, X, A, B, C, result, zero, overflow, completed);

    initial
    begin
        $dumpvars;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #1
        clk <= 1;

        #1
        clk <= 0;

        #5
        clk <= 0;

        $finish;  
    end

endmodule