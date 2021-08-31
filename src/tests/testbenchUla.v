`include "../components/ula.v"

module testbenchUla;

    reg h = 0;
    reg [15:0] a = 16'b0000000001100000;
    reg [15:0] b = 16'b0000000000000011;
    wire [15:0] result;

    ula ula_0 (h, a, b, result);
    
    initial
    begin
        $dumpvars;

        #1
        h <= 0;

        #5
        h <= 1;

        #2
        h <= 1;

        #2
        h <= 0;
        a <= 16'b00000000000100;

        #3
        h <= 1;

        #2
        h <= 0;

        $finish;  
    end
endmodule