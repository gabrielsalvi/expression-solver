`include "../components/register.v"

module testbenchReg;

    reg clk = 0;
    reg rst = 0;
    reg l = 0;
    reg signed [15:0] in = 16'b1111111111111111;
    wire signed [15:0] out; 

    register reg_0 (clk, rst, l, in, out);
    
    initial
    begin
        $dumpvars;

        #1
        clk <= 1;

        #5
        clk <= 0;
        l <= 1;

        #2
        clk <= 1;

        #2
        clk <= 0;
        l <= 0;

        #1
        in <= 16'b1011000111100111;

        #2
        l <= 1;

        #2
        clk <= 1;
        
        #5
        rst <= 1;

        #1
        rst <= 0;

        $finish;  
    end
endmodule