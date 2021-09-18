`include "../components/mux.v"

module testbenchMux;

    reg [1:0] select = 2'b00;
    reg signed [15:0] a = 16'b1111111111111111;
    reg signed [15:0] b = 16'b1101111111111111;
    reg signed [15:0] c = 16'b1011111111111111;
    reg signed [15:0] d = 16'b1000111111111111;
    wire signed [15:0] out;

    mux multiplexer(select, a, b, c, d, out);
    
    initial
    begin
        $dumpvars;

        #1
        select <= 11;

        #1
        select <= 10;

        #1
        select <= 01;

        #2
        select <= 01;

        $finish;  
    end
endmodule