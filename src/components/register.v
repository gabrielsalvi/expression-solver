module reg (X, LX, clk, rst, reg_X);

    input [15:0] X;
    input LX;
    input clk;
    input rst;
    output reg [15:0] reg_X;

    always @(posedge clk, posedge rst)
    begin
        if (LX == 1)
            reg_X <= X;
        
        if (rst == 1)
            reg_X <= 16'b0000000000000000;
    end
endmodule