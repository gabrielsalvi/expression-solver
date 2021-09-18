`include "../components/alu.v"

module testbenchAlu;

    reg h = 0;
    reg signed [15:0] a = 16'b1111111111111111;
    reg signed [15:0] b = 16'b1000000000000000;
    wire signed [15:0] result;
    wire overflow;

    alu alu_0 (h, a, b, overflow, result);
    
    initial
    begin
        $dumpvars;

        #1
        h <= 0;

        #5
        h <= 1;

        #2
        h <= 0;

        #3
        h <= 1;

        #2
        h <= 0;

        $finish;  
    end
endmodule